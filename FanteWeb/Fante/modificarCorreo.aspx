<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificarCorreo.aspx.cs" Inherits="Fante.modificarCorreo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Fante ¡Es Aprobar!</title>

    <link href="Css.css" rel="stylesheet" />

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

    <link href="css/modificarCorreo.css" rel="stylesheet" />

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

                    <h3 style="margin-top: 10px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Información Personal</h3>

                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Información Personal</h4>

                </div>

            </div>

            <div class="row">

                <div class="visible-sm visible-md visible-lg col-sm-2 panel panel-default panelBlanco">

                    <div class="panel-body">

                        <h4 style="color: gray; padding-top: 150px">Modificar Correo</h4>

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

                        <div class="col-xs-0 col-sm-3 col-md-4" style="text-align: center"></div>

                        <div class="col-xs-12 col-sm-6 col-md-4 contenedor">

                            <table style="width: 100%">

                                <tr>

                                    <td class="well">

                                        <asp:Label ID="etiquetaCorreo" runat="server" Width="90%" Text="Correo Electrónico"></asp:Label>

                                    </td>

                                </tr>

                                <tr>

                                    <td class="well">

                                        <asp:Label runat="server" ID="etiquetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">El correo electrónico ya esta registrado</asp:Label>
                                        <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px"> Realizando las modificaciones, esperá... </asp:Label>

                                        <asp:TextBox ID="textBoxCorreo" TextMode="Email" Width="100%" Height="40px" CssClass="form-control" runat="server"></asp:TextBox>
                                        
                                    </td>


                                </tr>

                            </table>


                        </div>

                        <div class="col-xs-0 col-sm-3 col-md-4"></div>

                    </div>

                    <div class="row">

                        <div class="col-xs-12 col-sm-6 btnModificar">

                            <asp:Button ID="botonModificar" runat="server" CssClass="btn btn-primary" Text="Modificar" OnClick="botonModificar_Click" />

                        </div>

                        <div class="col-xs-12 col-sm-6 btnCancelar">

                            <asp:Button ID="botonCancelar" runat="server" CssClass="btn btn-default" Text="Cancelar" OnClick="botonCancelar_Click" />

                        </div>


                    </div>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
