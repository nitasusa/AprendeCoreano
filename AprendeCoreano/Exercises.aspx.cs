using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AprendeCoreano
{
    public partial class Exercises : Page
    {
        private DataTable dtEjercicios;

        private int iEjercicio = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuarioLogado"] == null || Session["usuarioLogado"].ToString() == string.Empty)
            {
                EsLogado.SetActiveView(Anonymous);
            }
            else
            {
                iEjercicio = Int32.Parse(txtiEjercicio.Text);
                if (!IsPostBack)
                {
                    EsLogado.SetActiveView(Logado);
                    llenarCboColecciones();
                    Session["dtEjercicios"] = null;
                }
                else
                {
                    if (Session["dtEjercicios"] != null)
                        dtEjercicios = (DataTable)Session["dtEjercicios"];
                }
            }
        }

        private void llenarCboColecciones()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_CMB_COLECCIONES", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = Int32.Parse(Session["idLogado"].ToString());
            conn.Open();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conn.Close();
            cboColecciones.DataSource = dt;
            cboColecciones.DataTextField = "Descripcion";
            cboColecciones.DataValueField = "Id_Coleccion";
            cboColecciones.SelectedValue = "0";
            cboColecciones.DataBind();
        }

        protected void btnEjercicios_Click(object sender, EventArgs e)
        {
            if (dtEjercicios == null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SP_SELECT_EJERCICIOS", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Id_Coleccion", SqlDbType.Int).Value = Int32.Parse(cboColecciones.SelectedValue.ToString());
                conn.Open();
                dtEjercicios = new DataTable();
                dtEjercicios.Load(cmd.ExecuteReader());
                conn.Close();
                Session["dtEjercicios"] = dtEjercicios;
                iEjercicio = 0;
                txtiEjercicio.Text = "0";
            }
            lblNuevaColeccion.Text = string.Empty;
            EsLogado.SetActiveView(Ejercicios);
            prepararEjercicio();
        }

        protected void cboColecciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            iEjercicio = 0;
            txtiEjercicio.Text = "0";
            dtEjercicios = null;
            Session["dtEjercicios"] = null;
        }

        private void prepararEjercicio()
        {
            if (iEjercicio < dtEjercicios.Rows.Count)
            {
                string[] enunciado = dtEjercicios.Rows[iEjercicio][3].ToString().Split('|');
                txtEnunciado.Text = enunciado[0];
                for (int i = 1; i < enunciado.Length; i++)
                {
                    txtEnunciado.Text = txtEnunciado.Text + Environment.NewLine + enunciado[i];
                }
                if (dtEjercicios.Rows[iEjercicio][2].ToString() == "Opciones")
                {
                    string[] opciones = dtEjercicios.Rows[iEjercicio][4].ToString().Split(';');
                    lblOpcion1.Text = opciones[0];
                    lblOpcion2.Text = opciones[1];
                    lblOpcion3.Text = opciones[2];
                }
                else
                {
                    lblOpcion1.Text = string.Empty;
                    lblOpcion2.Text = string.Empty;
                    lblOpcion3.Text = string.Empty;
                }
                txtEscribir.Text = string.Empty;
                lblValidacion.Text = string.Empty;
                btnValidar.Enabled = true;
            }
            else
            {
                iEjercicio = 0;
                txtiEjercicio.Text = "0";
                btnSalir_Click(null, null);
            }
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            string respuestaCorrecta = dtEjercicios.Rows[iEjercicio][5].ToString().Trim().ToLower();
            int concepto = Int32.Parse(dtEjercicios.Rows[iEjercicio][1].ToString());
            if (txtEscribir.Text.Trim().ToLower() == respuestaCorrecta)
            {
                lblValidacion.ForeColor = System.Drawing.Color.Green;
                lblValidacion.Text = "¡Respuesta correcta!";
                sumarAcierto(1, concepto);
            }
            else
            {
                lblValidacion.ForeColor = System.Drawing.Color.Red;
                lblValidacion.Text = "Respuesta incorrecta";
                sumarAcierto(0, concepto);
            }
            btnValidar.Enabled = false;
        }

        private void sumarAcierto(int numAciertos, int concepto)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_UPDATE_RESULTADO", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = Int32.Parse(Session["idLogado"].ToString());
            cmd.Parameters.Add("@Id_Concepto", SqlDbType.Int).Value = concepto;
            cmd.Parameters.Add("@NumAciertos", SqlDbType.Int).Value = numAciertos;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnSigEjercicio_Click(object sender, EventArgs e)
        {
            iEjercicio = iEjercicio + 1;
            txtiEjercicio.Text = iEjercicio.ToString();
            prepararEjercicio();
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            txtEscribir.Text = string.Empty;
            lblValidacion.Text = string.Empty;
            btnValidar.Enabled = true;
            comprobarPuntuaciones();
            EsLogado.SetActiveView(Logado);
        }

        private void comprobarPuntuaciones()
        {
            if (!EsPerfilAdmin(Int32.Parse(Session["idLogado"].ToString())))
            {
                DataTable dtPuntuaciones = new DataTable();
                int coleccion = Int32.Parse(cboColecciones.SelectedValue.ToString());
                int idUsuario = Int32.Parse(Session["idLogado"].ToString());
                bool coleccionApta = true;
                recuperarPuntuaciones(idUsuario, coleccion, ref dtPuntuaciones);
                int total = totalEjerciciosColeccion(coleccion);
                if (dtPuntuaciones.Rows.Count != total)
                {
                    return;
                }
                for (int i = 0; coleccionApta && i < dtPuntuaciones.Rows.Count; i++)
                {
                    if (Double.Parse(dtPuntuaciones.Rows[i][0].ToString()) < 50)
                    {
                        coleccionApta = false;
                    }
                }
                if (coleccionApta)
                {
                    if (desbloquearSigColeccion(Int32.Parse(Session["idLogado"].ToString()), coleccion))
                    {
                        llenarCboColecciones();
                        lblNuevaColeccion.Text = "¡Felicidades, acabas de desbloquear la siguiente colección de ejercicios! Sigue practicando :)";
                    }                    
                }
            }
        }

        private int totalEjerciciosColeccion(int coleccion)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_TOTAL_EJERCICIOS_COLECCION", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Coleccion", SqlDbType.Int).Value = coleccion;
            conn.Open();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conn.Close();
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        private bool desbloquearSigColeccion(int idUsuario, int coleccion)
        {
            if (coleccion == 5) //la última de las colecciones desbloqueables
            {
                return false;
            }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_DESBLOQUEAR_COLECCION_SIGUIENTE", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            cmd.Parameters.Add("@Id_Coleccion", SqlDbType.Int).Value = coleccion;
            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                conn.Close();
                return false;
            }
        }

        private void recuperarPuntuaciones(int idUsuario, int coleccion, ref DataTable dtPuntuaciones)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_PUNTUACIONES", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            cmd.Parameters.Add("@Id_Coleccion", SqlDbType.Int).Value = coleccion;
            conn.Open();
            dtPuntuaciones.Load(cmd.ExecuteReader());
            conn.Close();
        }

        private bool EsPerfilAdmin(int idUsuario)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_PERFIL_USUARIO", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            conn.Open();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conn.Close();
            if (Int32.Parse(dt.Rows[0][0].ToString()) == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}