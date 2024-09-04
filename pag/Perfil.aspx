<%@ Page Title="" Language="C#" MasterPageFile="~/pag/SiteLogin.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="invent_H.pag.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card p-4 text-center">
                    <h2 class="card-title textoResaltado">Perfil del Usuario</h2>
                    <div class="card-body">
                        <asp:Label ID="LabelNombre" runat="server" CssClass="h5  textoResaltado"></asp:Label>
                        <asp:Label ID="LabelCorreo" runat="server" CssClass="h6 text-secondary"></asp:Label>
                        <hr />
                        <div class="text-center">
                            <asp:Button ID="ButtonCerrarSesion" runat="server" Text="Cerrar Sesión" CssClass="btn btn-danger" OnClick="ButtonCerrarSesion_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
