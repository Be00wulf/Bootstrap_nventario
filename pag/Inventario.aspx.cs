using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace invent_H.pag
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable tablaProducto = new DataTable();

        private string txtCodigo;
        private string txtProducto;
        private string txtPcompra;
        private string txtPventa;
        private string txtExist;
        private bool btnEditF, btnEditT;
        private bool btnElimF, btnElimT;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            tablaProducto.Columns.Add("CODIGO");
            tablaProducto.Columns.Add("PRODUCTO");
            tablaProducto.Columns.Add("PRECIOcompra");
            tablaProducto.Columns.Add("PRECIOventa");
            tablaProducto.Columns.Add("EXISTENCIA");

            if (!IsPostBack)
            {
                btnOff();
            }
            else
            {
                txtAstr();
            }

            StreamReader leer = new StreamReader(Server.MapPath("~/txt/Productos1.txt"));
            while (!leer.EndOfStream)
            {
                string linea = leer.ReadLine();
                string[] aux = linea.Split(',');
                tablaProducto.Rows.Add(aux);
            }
            leer.Close();
        }

        public void limpiar()
        {
            //txtAstr();
            TextBoxCodigo.Text = "";
            TextBoxProducto.Text = "";
            TextBoxPcompra.Text = "";
            TextBoxPventa.Text = "";
            TextBoxExistencia.Text = "";
            TextBoxBuscar.Text = "";
            btnOff();
        }

        public void btnOff()
        {
            btnElimF = btnELIMINAR.Enabled = false;
            btnEditF = btnEDITAR.Enabled = false;
        }
        public void txtAstr()
        {
            txtCodigo = TextBoxCodigo.Text;
            txtProducto = TextBoxProducto.Text;
            txtPcompra = TextBoxPcompra.Text;
            txtPventa = TextBoxPventa.Text;
            txtExist = TextBoxExistencia.Text;
        }

        protected void btnGUARDAR_Click(object sender, EventArgs e)
        {
            if (
                (txtCodigo == "") ||
                (txtProducto == "") ||
                (txtPcompra == "") ||
                (txtPventa == "") ||
                (txtExist == ""))
            {
                MostrarModalConMensaje("¡Todos los campos deben estar llenos!");
                return; 
            }

            string filePath = Server.MapPath("~/txt/Productos1.txt");

            if (File.Exists(filePath))
            {
                string[] lineas = File.ReadAllLines(filePath);
                bool prodEncontrado = false;

                foreach (string linea in lineas)
                {
                    string[] campos = linea.Split(',');

                    if (campos[0] == TextBoxCodigo.Text) 
                    {
                        prodEncontrado = true;
                        MostrarModalConMensaje("¡Ya existe un producto con el código especificado, intente con otro código!");
                        break;
                    }
                }

                if (!prodEncontrado)
                {
                    using (StreamWriter sw = new StreamWriter(filePath, true))
                    {
                        string nuevaLinea = txtCodigo + "," +
                                            txtProducto + "," +
                                            txtPcompra + "," +
                                            txtPventa + "," +
                                            txtExist;
                        sw.WriteLine(nuevaLinea);
                    }

                    MostrarModalConMensaje("¡Producto agregado exitosamente!");
                    limpiar();
                }
            }
            else
            {
                MostrarModalConMensaje("¡El archivo de datos no existe!");
            }
        }

        protected void btnEDITAR_Click(object sender, EventArgs e)
        {
            if (
                (txtCodigo == "") ||
                (txtProducto == "") ||
                (txtPcompra == "") ||
                (txtPventa == "") ||
                (txtExist == ""))
            {
                MostrarModalConMensaje("¡Todos los campos deben estar llenos!");
                return; 
            }

            string filePath = Server.MapPath("~/txt/Productos1.txt");

            if (File.Exists(filePath))
            {
                string[] lineas = File.ReadAllLines(filePath);
                bool prodEncontrado = false;

                for (int i = 0; i < lineas.Length; i++)
                {
                    string[] campos = lineas[i].Split(',');

                    if (campos[0] == txtCodigo)
                    {
                        lineas[i] = txtCodigo + "," +
                            txtProducto + "," +
                            txtPcompra + "," +
                            txtPventa + "," +
                            txtExist;
                        prodEncontrado = true;
                        break;
                    }
                }

                if (prodEncontrado)
                {
                    File.WriteAllLines(filePath, lineas);
                    MostrarModalConMensaje("¡Información actualizada exitosamente!");
                    limpiar();
                }
                else
                {
                    MostrarModalConMensaje("¡No se encontró el producto con el código especificado!");
                }
            }
            else
            {
                MostrarModalConMensaje("¡El archivo de datos no existe!");
            }
        }

        protected void btnELIMINAR_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/txt/Productos1.txt");

            if (File.Exists(filePath))
            {
                string[] lineas = File.ReadAllLines(filePath);
                List<string> nuevasLineas = new List<string>();
                bool prodEncontrado = false;

                foreach (string linea in lineas)
                {
                    string[] campos = linea.Split(',');

                    if (campos[0] == txtCodigo)
                    {
                        prodEncontrado = true;
                    }
                    else
                    {
                        nuevasLineas.Add(linea);
                    }
                }

                if (prodEncontrado)
                {
                    File.WriteAllLines(filePath, nuevasLineas.ToArray());
                    MostrarModalConMensaje("¡Dato eliminado exitosamente!");
                    limpiar();
                }
                else
                {
                    MostrarModalConMensaje("¡No se encontró el producto con el código especificado!");
                }
            }
            else
            {
                MostrarModalConMensaje("¡El archivo de datos no existe!");
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            string filePath = Server.MapPath("~/txt/Productos1.txt");
            if (File.Exists(filePath))
            {
                string[] lineas = File.ReadAllLines(filePath);

                foreach (string linea in lineas)
                {
                    string[] campos = linea.Split(',');

                    if (campos[0] == TextBoxBuscar.Text)
                    {
                        txtCodigo = campos[0];
                        txtProducto = campos[1];
                        txtPcompra = campos[2];
                        txtPventa = campos[3];
                        txtExist = campos[4];

                        encontrado = true;
                        break;
                    }
                }

                if (encontrado)
                {
                    btnEDITAR.Enabled = true;
                    btnELIMINAR.Enabled = true;

                    TextBoxCodigo.Text = txtCodigo;
                    TextBoxProducto.Text = txtProducto;
                    TextBoxPcompra.Text = txtPcompra;
                    TextBoxPventa.Text = txtPventa;
                    TextBoxExistencia.Text = txtExist;
                }
                else
                {
                    MostrarModalConMensaje("¡No existen productos con el CODIGO ingresado!");
                    btnOff();
                }

                TextBoxBuscar.Text = "";
            }
            else
            {
                MostrarModalConMensaje("¡El archivo de datos no existe!");
            }
        }

        protected void ButtonLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void MostrarModalConMensaje(string mensaje)
        {
            lblModalMessage.Text = mensaje;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "$('#myModal').modal('show');", true);
        }



    }
}