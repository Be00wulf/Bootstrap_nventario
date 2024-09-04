using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace invent_H.pag
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    // Mostrar datos del usuario en los Labels
                    LabelNombre.Text = "Hola de nuevo, " + Session["Username"].ToString();
                    
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void ButtonCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}