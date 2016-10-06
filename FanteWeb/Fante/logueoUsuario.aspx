<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logueoUsuario.aspx.cs" Inherits="Fante.logueoUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Fante ¡Es Aprobar!</title>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script>

        function session_expirada() {
            $.ajax({
                type: "POST",
                url: "Logueo.aspx/AbandonarSession",
                data: {},
                contenType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
            });
        }

    </script>
    <link href="css/logueoUsuario.css" rel="stylesheet" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="container">

            <div class="row">
                <div class="col-xs-5"></div>
                <div class="col-xs-2 logoFante" style="text-align: center">
                    <asp:Image ID="imagenFante" runat="server" ImageUrl="~/Image/logo1.png" />
                </div>
                <div class="col-xs-5"></div>

            </div>

            <div class="row visible-xs invisible-sm">
                <div class="col-xs-12 titulo ">Un profesor particular ahora.</div>
            </div>

            <div class="row  invisible-xs visible-sm visible-md visible-lg">
                <div class="col-xs-3"></div>
                <div class="col-xs-6 titulo">Un profesor particular ahora.</div>
                <div class="col-xs-3"></div>

            </div>

            <div class="row">

                <div class="col-xs-0 col-sm-3 col-md-4 "></div>

                <div class="col-xs-12 col-sm-6 col-md-4 well">

                    <div class="row">

                        <div class="col-xs-12 cuentaFante">Accede con la cuenta de Fante</div>

                    </div>

                    <div class="row">

                        <div class="col-xs-12 Imagen">
                            <asp:Image ID="imagenUsuario" runat="server" ImageUrl="~/Image/usuariovacio.png" />
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-xs-12 introduceUsuario">
                            <asp:TextBox ID="usuarioTextBox" runat="server" placeholder="Introduce tu usuario"></asp:TextBox>
                        </div>


                    </div>

                    <div class="row">

                        <div class="col-xs-12 ingresaClave">
                            <asp:TextBox ID="claveTextBox" runat="server" TextMode="Password" placeholder="Ingresa la clave"></asp:TextBox>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-xs-2"></div>

                        <div class="col-xs-8">
                            <asp:Label runat="server" ID="etiquetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">La clave y el usuario son incorrectos, inténtalo de nuevo.</asp:Label>
                            <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px"> Esperá un momento... </asp:Label>
                        </div>

                        <div class="col-xs-2"></div>

                    </div>

                    <div class="row">

                        <div class="col-xs-12 botonSession">

                            <asp:Button ID="iniciarSessionBoton" runat="server" Text="Iniciar Sesión" Height="40px" Width="60%" CssClass="btn btn-primary" OnClick="iniciarSessionBoton_Click" />

                        </div>


                    </div>

                    <div class="row">

                        <div class="col-xs-12 cuentaConectada">
                            <asp:CheckBox ID="mantenermeConectado" runat="server" Style="font-size: 12px" />
                            No salir de la cuenta
                        </div>


                    </div>

                    <div class="row">

                        <div class="col-xs-12 contraseña">
                            <asp:HyperLink ID="olvidasteLaContrasena" runat="server" NavigateUrl="contrasenaUsuario.aspx">¿Olvidaste la contraseña?</asp:HyperLink>
                        </div>


                    </div>

                    <div class="row">

                        <div class="col-xs-12 facebook">

                            <asp:Button ID="botonFacebook" runat="server" Text="Accede con Facebook" Height="40px" Width="60%" CssClass="btn btn-primary" OnClick="botonFacebook_Click" />

                        </div>


                    </div>

                </div>

                <div class="col-xs-0 col-sm-3 col-md-4"></div>

            </div>

            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-xs-12 col-sm-4 linea">
                    <hr style="border-top: 2px solid #eee" />
                </div>
                <div class="col-sm-4"></div>
            </div>

            <div class="row">
                <div class="col-xs-2 col-sm-4"></div>
                <div class="col-xs-8 col-sm-4 cuentaCreada" style="font-size: 16px; color: blue; text-align: center; margin-top: -5px">
                    <asp:HyperLink ID="crearCuenta" NavigateUrl="~/seleccionarRegistro.aspx" runat="server">Crear Cuenta</asp:HyperLink>
                </div>

                <div class="col-xs-2 col-sm-4"></div>

            </div>

            <%--<div class="row">
                <div class ="col-xs-4"></div>
                <div class ="col-xs-4" style="font-size:12px; text-align:center; margin-top : 10px">Una sola cuenta Fante para todas tus materias</div>
                   
               
                <div class ="col-xs-4"></div>

            </div>
            
            <div class="row">
                <div class ="col-xs-4"></div>
                <div class ="col-xs-4" style="text-align:center">
                    <asp:Image ID="Image44" runat="server" ImageUrl="~/Image/pie.png" style="margin-top:3px"/></div>
                <div class ="col-xs-4"></div>

            </div>--%>
        </div>

    </form>
</body>
</html>
