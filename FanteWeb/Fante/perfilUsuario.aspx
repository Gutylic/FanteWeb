<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfilUsuario.aspx.cs" Inherits="Fante.perfilUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Fante ¡Es Aprobar!</title>

    <link href="Css.css" rel="stylesheet" />

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <link href="css/perfilUsuario.css" rel="stylesheet" />
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

        <div class="row" style="height: 90px">

            <div class="col-xs-2" style="text-align: center">

                <asp:Image ID="Logo" runat="server" ImageUrl="~/Image/logo2.png" Style="margin-top: 5px" />

            </div>

            <div class="col-xs-10"></div>

        </div>

        <div class="container">

            <div class="row">

                <div class="visible-sm visible-md visible-lg col-sm-2 miCuenta">

                    <h3 class="visible-md visible-lg" style="margin-top: 12px;">Mi Cuenta</h3>

                    <h4 class="visible-sm" style="padding-top: 6px">Mi Cuenta</h4>

                </div>

                <div class="col-xs-12 col-sm-10 informacion">

                    <h3 class="visible-md visible-lg" style="margin-top: 10px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Información Personal</h3>
                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Información Personal</h4>

                </div>

            </div>
            
            <div class="row">

                <div class="visible-sm visible-md visible-lg col-sm-2 panel panel-default panelBlanco">

                    <div class="panel-body">

                        <h4 style="color: gray; padding-top: 150px">Modificar mis datos</h4>

                    </div>

                </div>

                <div class="col-xs-12 col-sm-10 panelGris">

                    <div style="height: 20px"></div>

                    <div class="row">

                        <div class="col-xs-12">

                            <asp:Label ID="nombrePerfil" runat="server"></asp:Label>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-xs-12 col-sm-5 col-md-4">

                            <h4 class="visible-sm visible-md visible-lg" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 18px;">Administrá tu información básica (modifica correo<br />
                                electrónico, contraseña y número de Whatsapp) para
                                <br />
                                que puedas aprovechar con la máxima seguridad
                                <br />
                                los servicios de Fante.<br />
                                Recuerda que te recomendamos registrar un
                                <br />
                                celular para poder enviar y recibir los ejercicios
                                <br />
                                por medio Whatsapp (sin costo extra).
                            </h4>

                            <h5 class="visible-xs" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 13px;">Administrá tu información básica (modifica correo
                                electrónico, contraseña y número de Whatsapp) para 
                                que puedas aprovechar con la máxima seguridad 
                                los servicios de Fante.
                                Recuerda que te recomendamos registrar un 
                                celular para poder enviar y recibir los ejercicios 
                                por medio Whatsapp (sin costo extra).
                            </h5>

                        </div>

                        <div class="col-sm-7 col-md-8">

                            <div class="col-xs-12 altoCambio altoCambioPrimero">

                                <table class="well" style="width: 100%">
                                    <tr>
                                        <td style="width: 20%">
                                            <asp:Label ID="etiqueta1" runat="server" Text="Correo"></asp:Label></td>
                                        <td style="width: 70%">
                                            <asp:Label ID="etiquetaCorreo" runat="server"></asp:Label></td>
                                        <td style="width: 10%">
                                            <a class="btn btn-default navbar-btn botonmayor" title="modificar correo" href="modificarCorreo.aspx">></a></td>
                                    </tr>

                                </table>

                            </div>

                            <div class="col-xs-12 altoCambio">
                                <table class="well" style="width: 100%">
                                    <tr>
                                        <td style="width: 20%">
                                            <asp:Label ID="etiqueta2" runat="server" Text="Contraseña"></asp:Label></td>
                                        <td style="width: 70%">
                                            <asp:Label ID="etiquetaContrasena" runat="server"></asp:Label></td>
                                        <td style="width: 10%"><a style="font-size: 15px; font-weight: bold" class="btn btn-default navbar-btn botonmayor" title="modificar contraseña" href="modificarContrasena.aspx">></a></td>
                                    </tr>
                                </table>
                            </div>

                            <div class="col-xs-12 altoCambio">
                                <table class="well" style="width: 100%">
                                    <tr>
                                        <td style="width: 20%">
                                            <asp:Label ID="etiqueta3" runat="server" Text="Whatsapp"></asp:Label></td>
                                        <td style="width: 70%">
                                            <asp:Label ID="etiquetaWhatsapp" runat="server"></asp:Label></td>
                                        <td style="width: 10%"><a style="font-size: 15px; font-weight: bold" class="btn btn-default navbar-btn botonmayor" title="modificar Whatsapp" href="modificarCelular.aspx">></a></td>
                                    </tr>
                                </table>
                            </div>
                            
                        </div>

                    </div>

                </div>

            </div>

            <div class="col-xs-12" style="text-align: center">

                <asp:Button ID="guardaryVolver" runat="server" CssClass="btn btn-primary" Text="Guardar Cambios y Volver" OnClick="guardaryVolver_Click" />
            
            </div>

        </div>

    </form>

</body>

</html>
