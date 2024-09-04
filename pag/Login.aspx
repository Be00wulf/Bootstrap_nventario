<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="invent_H.pag.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .footer {
            background-color: #212529;
            color: #ffffff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body class="bg-dark text-white">

    <form id="form1" runat="server">

        <div>
            <div class="row justify-content-center align-items-center" style="min-height: 80vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="container p-3 text-dark" style="border-radius: 10px;">
                        <h2 class="text-center mb-4 textoSimple">INICIAR SESIÓN</h2>
                        <div class="form-group mb-3">
                            <asp:TextBox ID="TextBoxUsuario" CssClass=" estilotxtBox" placeholder="Usuario" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="TextBoxContrasenia" CssClass=" estilotxtBox" TextMode="Password" placeholder="Clave" runat="server"></asp:TextBox>
                        </div>
                        <div class="text-center">
                            <asp:Button ID="ButtonIngresar" CssClass="btn btn-primary" runat="server" Text="Ingresar" OnClick="ButtonIngresar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="loginErrorModal" tabindex="-1" aria-labelledby="loginErrorModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title textoResaltado" id="loginErrorModalLabel">Error de inicio de sesión</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body textoResaltado">
                        Nombre de usuario o contraseña incorrectos.
                   
                    </div>
                    <div class="modal-footer textoResaltado">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <footer class="footer ">
            <p class="textoAzul">&copy; <%: DateTime.Now.Year %> - MJBdT - ASP.NET <a class="navbar-brand textoSimple" runat="server" href="~/Default">PRODUCTOS</a>  </p>
        </footer>

    </form>

</body>

</html>
