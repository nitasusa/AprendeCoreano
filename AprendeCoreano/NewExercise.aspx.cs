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
    public partial class NewExercise : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarCboColecciones();
                llenarCboConceptos();
            }
        }

        private void llenarCboConceptos()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_CMB_CONCEPTOS", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conn.Close();
            cboConceptos.DataSource = dt;
            cboConceptos.DataTextField = "Desc_Concepto";
            cboConceptos.DataValueField = "Id_Concepto";
            cboConceptos.SelectedValue = "0";
            cboConceptos.DataBind();
        }

        private void llenarCboColecciones()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT 0 AS Id_Coleccion, '[Selecciona]' AS Descripcion, 0 AS Orden UNION SELECT Id_Coleccion, Descripcion, Orden FROM Colecciones	ORDER BY Orden", conn);
            cmd.CommandType = CommandType.Text;
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

        protected void btnCrearEjercicio_Click(object sender, EventArgs e)
        {
            string enunciado = txtEnunciado.Text.Replace("\r\n", "|");
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_INSERT_EJERCICIO", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = Int32.Parse(Session["idLogado"].ToString());
            cmd.Parameters.Add("@Coleccion", SqlDbType.Int).Value = Int32.Parse(cboColecciones.SelectedValue);
            cmd.Parameters.Add("@Concepto", SqlDbType.Int).Value = Int32.Parse(cboConceptos.SelectedValue);
            cmd.Parameters.Add("@Enunciado", SqlDbType.NVarChar).Value = enunciado;
            cmd.Parameters.Add("@Respuesta", SqlDbType.NVarChar).Value = txtRespuesta.Text.Trim();
            if (chkOpciones.Checked)
            {
                string opciones = txtOpcion1.Text.Trim() + ";" + txtOpcion2.Text.Trim() + ";" + txtOpcion3.Text.Trim() + ";";
                cmd.Parameters.Add("@Tipo", SqlDbType.NVarChar).Value = "Opciones";
                cmd.Parameters.Add("@Opciones", SqlDbType.NVarChar).Value = opciones;
            }
            else
            {
                cmd.Parameters.Add("@Tipo", SqlDbType.NVarChar).Value = "Escribir";
            }
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/Exercises", false);
        }
    }
}