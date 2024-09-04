using System;
using System.IO;
using System.Web.UI;

namespace invent_H.pag
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            string username = TextBoxUsuario.Text.Trim();
            string password = TextBoxContrasenia.Text.Trim();

            bool isAuthenticated = AuthenticateUser(username, password);

            if (isAuthenticated)
            {
                Session["Username"] = username;
                Response.Redirect("~/pag/Perfil.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "loginErrorModal", "$('#loginErrorModal').modal('show');", true);
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string filePath = Server.MapPath("~/txt/Usuarios.txt");

            foreach (string line in File.ReadLines(filePath))
            {
                string[] parts = line.Split(',');
                if (parts.Length == 2)
                {
                    string storedUsername = parts[0].Trim();
                    string storedPassword = parts[1].Trim();

                    if (username == storedUsername && password == storedPassword)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
