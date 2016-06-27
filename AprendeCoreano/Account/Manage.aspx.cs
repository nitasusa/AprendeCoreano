using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AprendeCoreano.Account
{
    public partial class Manage : Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        protected int NumEjerciciosRealizados = 0;
        protected int NumEjerciciosCreados = 0;

        protected void Page_Load()
        {
            DataTable dtPuntosFuertes = new DataTable();
            DataTable dtPuntosDebiles = new DataTable();
            recuperarPuntosFuertes(Int32.Parse(Session["idLogado"].ToString()), ref dtPuntosFuertes);
            recuperarPuntosDebiles(Int32.Parse(Session["idLogado"].ToString()), ref dtPuntosDebiles);
            gvMejoresPuntuaciones.DataSource = dtPuntosFuertes;
            gvMejoresPuntuaciones.DataBind();
            gvPeoresPuntuaciones.DataSource = dtPuntosDebiles;
            gvPeoresPuntuaciones.DataBind();
            recuperarNumEjericios(Int32.Parse(Session["idLogado"].ToString()));
            if (!IsPostBack)
            {
                ChangePassword.Visible = true;

                // Presentar mensaje de operación correcta
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // Seccionar la cadena de consulta desde la acción
                    Form.Action = ResolveUrl("~/Account/Manage");

                    SuccessMessage =
                        message == "ChangePwdSuccess" ? "Se cambió la contraseña."
                        : message == "ChangePwdFailed" ? "No se ha podido cambiar la contraseña."
                        : String.Empty;
                    successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
                }
            }
        }

        private void recuperarPuntosDebiles(int idUsuario, ref DataTable dtPuntosDebiles)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_PUNTOS_DEBILES", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            conn.Open();
            dtPuntosDebiles.Load(cmd.ExecuteReader());
            conn.Close();
        }

        private void recuperarPuntosFuertes(int idUsuario, ref DataTable dtPuntosFuertes)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_PUNTOS_FUERTES", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            conn.Open();
            dtPuntosFuertes.Load(cmd.ExecuteReader());
            conn.Close();
        }

        private void recuperarNumEjericios(int idUsuario)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_SELECT_NUM_EJERCICIOS", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id_Usuario", SqlDbType.Int).Value = idUsuario;
            conn.Open();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conn.Close();
            NumEjerciciosRealizados = Int32.Parse(dt.Rows[0][0].ToString());
            NumEjerciciosCreados = Int32.Parse(dt.Rows[0][1].ToString());
        }

    }
}