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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnviarSugerencia_Click(object sender, EventArgs e)
        {
            if (txtSugerencia.Text.Trim() != string.Empty)
            {
                string email = "Anónimo";
                if (Session["usuarioLogado"] != null && Session["usuarioLogado"].ToString() != string.Empty)
                {
                    email = Session["emailLogado"].ToString();
                }
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SP_INSERT_SUGERENCIA", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@Texto", SqlDbType.VarChar).Value = txtSugerencia.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                txtSugerencia.Text = string.Empty;
                lblSugerenciaEnviada.Visible = true;
            }
        }
    }
}