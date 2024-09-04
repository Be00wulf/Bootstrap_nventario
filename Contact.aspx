<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="invent_H.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="container my-5">
        <main>

            <section class="content-section mb-5" aria-labelledby="majorTitle">
                <div class="row justify-content-center">
                    <div class="col-slg-8 col-md-10 text-center">
                        <h1 id="majorTitle" class="text-white">¡Escríbenos!</h1>
                        <p class="text-white">
                            ¡Nos encantaría saber de ti! Si tienes preguntas, comentarios o simplemente 
                            quieres ponerte en contacto con nosotros, no dudes en utilizar la siguiente 
                            información. Estamos aquí para ayudarte en lo que necesites.
                        </p>
                    </div>
                </div>
            </section>

            <section class="content-section" aria-labelledby="redesTitle">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10 text-center">
                        <h2 id="redesTitle" class="text-white">Redes Sociales</h2>
                        <p class="text-white">¡Síguenos en nuestras redes sociales para mantenerte 
                            al tanto de nuestras últimas novedades y promociones! Puedes encontrarnos 
                            en las siguientes plataformas:</p>
                        <ul class="list-unstyled">
                            <li><a class="btn btn-outline-light my-2" href="https://github.com/Be00wulf"><strong>GitHub &raquo;</strong></a></li>
                            <li><a class="btn btn-outline-light my-2" href="https://www.linkedin.com/in/mar%C3%ADa-jos%C3%A9-baquiax-rodr%C3%ADguez-su/"><strong>LinkedIn &raquo;</strong></a></li>
                            <li><a class="btn btn-outline-light my-2" href="https://www.tiktok.com/@planito.banana?_t=8oV7VbQwrW2&_r=1"><strong>TikTok &raquo;</strong></a></li>
                            <li><a class="btn btn-outline-light my-2" href="https://www.instagram.com/planito.banana/"><strong>Instagram &raquo;</strong></a></li>
                            <li><a class="btn btn-outline-light my-2" href="https://dly.to/NMDWRlvcGmW"><strong>daily.dev &raquo;</strong></a></li>
                        </ul>
                        <p class="text-white">Este sistema está construido utilizando ASP.NET, 
                            proporcionando una plataforma robusta y segura para el manejo de inventarios.</p>
                    </div>
                </div>
            </section>
        </main>
    </div>

</asp:Content>
