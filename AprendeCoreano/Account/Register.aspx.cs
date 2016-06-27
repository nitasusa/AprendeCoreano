using System;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace AprendeCoreano.Account
{
    public partial class Register : Page
    {

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SP_INSERT_USUARIO", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Nombre.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password.Text;
            conn.Open();
            try
            {
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                conn.Close();
                Session["usuarioLogado"] = Nombre.Text;
                Session["emailLogado"] = Email.Text;
                Session["idLogado"] = dt.Rows[0][0].ToString();
                Response.Redirect("~/", false);                
            }
            catch (Exception ex)
            {
                conn.Close();
                ErrorMessage.Text = ex.Message;
            }
        }

    }
}