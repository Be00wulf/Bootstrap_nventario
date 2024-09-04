<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="invent_H._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <!-- Contenedor principal para layout responsivo -->
    <div class=" my-5">
        <main>
            <!-- Sección ASP.NET -->
            <section class="content-section mb-5 textoSimple" aria-labelledby="aspnetTitle">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10 text-center textoSimple">
                        <h1 id="aspnetTitle">ASP.NET</h1>
                        <p >
                            ASP.NET es un marco de desarrollo gratuito para construir sitios web y 
                            aplicaciones web geniales utilizando HTML, CSS y JavaScript.
                        </p>
                        <p><a href="http://www.asp.net" class="btn btn-primary">Conoce más &raquo;</a></p>
                    </div>
                </div>
            </section>

            <!-- Sección Sistema de Inventario -->
            <section class="content-section" aria-labelledby="inventorySystemTitle">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <h2 id="inventorySystemTitle" class="text-center textoSimple">Sistema de Inventario</h2>
                        <p>Nuestro sistema de inventario está diseñado para simplificar la gestión de 
                            productos en cualquier negocio. Con una interfaz intuitiva y fácil de usar, 
                            podrás realizar las siguientes operaciones:</p>
                        <ul class="justified-list">
                            <li><strong>Editar Productos:</strong> Actualiza la información de los productos 
                                existentes para reflejar cambios en precios, descripciones o cantidades en 
                                stock.</li>

                            <li><strong>Eliminar Productos:</strong> Borra productos del inventario que ya 
                                no son necesarios o que han sido descontinuados, manteniendo tu base de 
                                datos limpia y actualizada.</li>

                            <li><strong>Guardar Productos:</strong> Añade nuevos productos al inventario 
                                con detalles completos, incluyendo nombres, precios y descripciones.</li>

                            <li><strong>Buscar Productos:</strong> Utiliza la funcionalidad de búsqueda 
                                para encontrar rápidamente productos específicos en tu inventario, mejorando 
                                la eficiencia y precisión.</li>
                        </ul>
                        <p>Este sistema está construido utilizando ASP.NET, proporcionando una plataforma 
                            robusta y segura para el manejo de inventarios.</p>
                    </div>
                </div>
            </section>
        </main>
    </div>

</asp:Content>
