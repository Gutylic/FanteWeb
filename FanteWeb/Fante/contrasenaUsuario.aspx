﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contrasenaUsuario.aspx.cs" Inherits="Fante.contrasenaUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Fante ¡Es Aprobar!</title>

    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


    <link href="css/contrasenaUsuario.css" rel="stylesheet" />
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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row">
                <div class="col-xs-5"></div>
                <div class="col-xs-2" style="text-align: center">
                    <asp:Image ID="imagenFante" runat="server" ImageUrl="~/Image/logo1.png" />
                </div>
                <div class="col-xs-5"></div>

            </div>

            <div class="row visible-xs invisible-sm">
                <div class="col-xs-12 titulo ">Ayuda de la cuenta para recuperar tu contraseña</div>
            </div>

            <div class="row invisible-xs visible-sm visible-md visible-lg">
                
                <div class="col-xs-12 titulo">Ayuda de la cuenta para recuperar tu contraseña</div>
              

            </div>

            <div class="row">

                <div class="col-xs-0 col-sm-3 col-md-4"></div>

                <div class="col-xs-12 col-sm-6 col-md-4 well">

                    <asp:Panel ID="panelInicial" runat="server" Visible="true">

                        <div class="row">

                            <div class="col-xs-12 cuentaFante">En instantes recibiras en tu celular y e-mail la clave</div>

                        </div>

                        <div class="row">

                            <div class="col-xs-12" style="text-align: center">
                                <asp:Image ID="ImagenContrasena" runat="server" ImageUrl="~/Image/contrasena.png" />
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-xs-12 nick">
                                <asp:TextBox ID="nickUsuario" runat="server" Height="40px" Width="60%" placeholder="Introduce tu usuario" ForeColor="DarkSlateGray" Font-Size="18px"></asp:TextBox>
                            </div>


                        </div>

                        <div class="row">

                            <div class="col-xs-2"></div>

                            <div class="col-xs-8">
                                <asp:Label runat="server" ID="etiquetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">No te encuentras registrado</asp:Label>
                                <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px"> Esperá un momento... </asp:Label>
                            </div>

                            <div class="col-xs-2"></div>

                        </div>

                        <div class="row">

                            <div class="col-xs-12 recuperar">
                                <asp:Button ID="botonRecuperar" runat="server" Text="Recuperar Contraseña" Height="40px" Width="60%" CssClass="btn btn-primary" OnClick="botonRecuperar_Click" />
                            </div>


                        </div>

                    </asp:Panel>

                    <asp:Panel ID="panelFinal" runat="server" Visible="false">

                        <div class="row">

                            <div class="col-xs-12 envioContrasena">ya te enviamos la contraseña, en momentos la recibiras...</div>

                        </div>


                        <div class="row">

                            <div class="col-xs-12 boton">
                                <asp:Button ID="botontaceptar" runat="server" Text="Volver a Fante" Height="40px" Width="60%" CssClass="btn btn-primary" OnClick="botontaceptar_Click" />
                            </div>


                        </div>
                    </asp:Panel>
                </div>

            </div>
            <div class="col-xs-0 col-sm-4 col-md-4"></div>

            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4" style="text-align: right"></div>
                <div class="col-xs-4"></div>

            </div>





        </div>



    </form>
</body>
</html>
