<%@ Page Title="Registros" Language="C#" MasterPageFile="~/pag/SiteLogin.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="invent_H.pag.Registros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="info">
        <main>
            <section class="content-section" aria-labelledby="datatTitle">
                <h1 id="dataTitle"></h1>

                <div class="row">
                    <div class="col-12">
                        <h1 class="textoResaltado text-center">Datos 
                       
                            <strong class="textoResaltado">registrados</strong>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover"
                            AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
                        </asp:GridView>
                    </div>
                </div>

            </section>
        </main>
    </div>
</asp:Content>
