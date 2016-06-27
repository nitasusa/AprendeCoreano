using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AprendeCoreano
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuarioLogado"] != null && Session["usuarioLogado"].ToString() != string.Empty)
            {
                EsLogin.SetActiveView(LoggedIn);
            }
            else
            {
                EsLogin.SetActiveView(Anonymous);
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuarioLogado"] = string.Empty;
            Session["emailLogado"] = string.Empty;
            Session["idLogado"] = string.Empty;
            Response.Redirect("~/");
        }
    }

}