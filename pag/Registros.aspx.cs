using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace invent_H.pag
{
    public partial class Registros : System.Web.UI.Page
    {
        DataTable tablaProducto;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack) 
            {
                CargarDatos();
            }
        }

        private void CargarDatos()
        {
            tablaProducto = new DataTable();
            tablaProducto.Columns.Add("CODIGO");
            tablaProducto.Columns.Add("PRODUCTO");
            tablaProducto.Columns.Add("PRECIO DE COMPRA");
            tablaProducto.Columns.Add("PRECIO DE VENTA");
            tablaProducto.Columns.Add("EXISTENCIA");

            // leyendo datos
            StreamReader leer = new StreamReader(Server.MapPath("~/txt/Productos1.txt"));

            while (!leer.EndOfStream)
            {
                string linea = leer.ReadLine();
                string[] aux = linea.Split(',');
                tablaProducto.Rows.Add(aux);
            }
            leer.Close();

            ViewState["DatosProductos"] = tablaProducto;

            GridView1.DataSource = tablaProducto;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;

            //// Recupera los datos del ViewState y los vuelve a enlazar
            tablaProducto = (DataTable)ViewState["DatosProductos"];
            //GridView1.DataSource = tablaProducto;
            //GridView1.DataBind();

            GridView1.PageIndex = e.NewPageIndex;

            GridView1.DataSource = tablaProducto;
            GridView1.DataBind();
        }



    }
}
