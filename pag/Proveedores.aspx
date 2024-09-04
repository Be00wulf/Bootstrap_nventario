<%@ Page Title="Proveedores Registrados" Language="C#" MasterPageFile="~/pag/SiteLogin.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="invent_H.pag.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="container mt-4 ">
        <main>
            <section class="content-section" aria-labelledby="inventTitle">
                <h1 id="inventTitle">Ingreso de proveedores</h1>

                <div class="row justify-content-center align-items-center mb-3">
                    <div class="col-md-6 mb-3">
                        <label for="TextBoxCodigo" class="alinCentro">CODIGO:</label>
                        <asp:TextBox ID="TextBoxCodigo" runat="server" CssClass="form-control estilotxtBoxS" type="number" placeholder="Ej: 12AA"></asp:TextBox>
                    </div>

                    <div class="col-md-6 mb-3">
                        PROVEEDOR<label for="TextBoxProducto">:</label>
                        <asp:TextBox ID="TextBoxProducto" runat="server" CssClass="form-control estilotxtBoxS" placeholder="Ej: Musa"></asp:TextBox>
                    </div>
                </div>


                <div class="row mb-3">
                    <div class="col text-center">
                        <asp:Button ID="ButtonLimpiar" runat="server" CssClass="btn btn-primary" Text="LIMPIAR" OnClick="ButtonLimpiar_Click" />
                        <asp:Button ID="btnGUARDAR" CssClass="btn btn-primary" runat="server" Text="GUARDAR" OnClick="btnGUARDAR_Click" />
                        <asp:Button ID="btnEDITAR" CssClass="btn btn-primary ms-2" runat="server" Text="EDITAR" Enabled="False" OnClick="btnEDITAR_Click" />
                        <asp:Button ID="btnELIMINAR" CssClass="btn btn-primary ms-2" runat="server" Text="ELIMINAR" Enabled="False" OnClick="btnELIMINAR_Click" />
                    </div>
                </div>

                <div class="row mb-3 justify-content-center align-items-center">
                    <div class="col text-center">
                        <asp:Button ID="ButtonBuscar" runat="server" CssClass="btn btn-primary" Text="BUSCAR" OnClick="ButtonBuscar_Click" />
                        <asp:TextBox ID="TextBoxBuscar" runat="server" CssClass="form-control d-inline-block w-auto ms-2" type="number" placeholder="Ingresar CODIGO"></asp:TextBox>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col text-center">
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="myModalLabel">Información Importante</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Label para mostrar mensajes dinámicos -->
                                <asp:Label ID="lblModalMessage" runat="server" CssClass="modal-label textoResaltado"></asp:Label>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            </section>
        </main>
    </div>
</asp:Content>
