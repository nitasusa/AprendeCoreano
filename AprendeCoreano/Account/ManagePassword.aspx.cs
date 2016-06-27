using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace AprendeCoreano.Account
{
    public partial class ManagePassword : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                changePasswordHolder.Visible = true;
                // Presentar mensaje de operación correcta
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // Seccionar la cadena de consulta desde la acción
                    Form.Action = ResolveUrl("~/Account/Manage");
                }
            }
        }

        protected void ChangePassword_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AprendeCoreanoConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SP_UPDATE_PASSWORD", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Session["emailLogado"].ToString();
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = CurrentPassword.Text;
                cmd.Parameters.Add("@NuevaPassword", SqlDbType.VarChar).Value = NewPassword.Text;
                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("~/Account/Manage?m=ChangePwdSuccess", false);
                }
                catch (Exception ex)
                {
                    conn.Close();
                    Response.Redirect("~/Account/Manage?m=ChangePwdFailed", false);
                }
            }
        }

    }
}