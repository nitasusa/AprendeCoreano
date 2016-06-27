using System;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace AprendeCoreano.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SP_VALIDAR_LOGIN", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Text;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password.Text;
                conn.Open();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                conn.Close();
                if (dt.Rows.Count == 0)
                {
                    FailureText.Text = "Intento de inicio de sesión no válido.";
                    ErrorMessage.Visible = true;
                }
                else
                {
                    Session["usuarioLogado"] = dt.Rows[0][0].ToString();
                    Session["idLogado"] = dt.Rows[0][1].ToString();
                    Session["emailLogado"] = Email.Text;
                    Response.Redirect("~/", false);
                }
            }
        }

    }
}