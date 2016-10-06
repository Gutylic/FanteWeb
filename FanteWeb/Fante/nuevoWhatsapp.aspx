﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevoWhatsapp.aspx.cs" Inherits="Fante.nuevoWhatsapp" %>

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

    <link href="css/nuevoWhatsapp.css" rel="stylesheet" />
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

                    <h3 class="visible-md visible-lg" style="margin-top: 10px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Recomendanos con tus Amigos</h3>

                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Recomendamos</h4>

                </div>

            </div>


            <div class="row">

                <div class="visible-sm visible-md visible-lg col-sm-2 panel panel-default panelBlanco">

                    <div class="panel-body">

                        <h4 style="color: gray; padding-top: 150px">Agregar Whatsapp</h4>

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

                                        <asp:Label ID="etiquetaNumeroWhatsapp" runat="server" Text="Número de Whatsapp"></asp:Label>

                                    </td>

                                </tr>

                                <tr>

                                    <td class="well">

                                        <asp:Label runat="server" ID="etiquetaErroneaNumero" Visible="false" ForeColor="Red" Font-Size="13px">No tiene forma de número de Whatsapp</asp:Label>
                                        <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px">Realizando las modificaciones, esperá... </asp:Label>
                                        <asp:Label runat="server" ID="etiquetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">Este número de Whatsapp ya esta registrado</asp:Label>

                                        <div class="col-xs-4 col-sm-2">

                                            <asp:TextBox ID="textBoxNumeroPais" placeholder="+00" Height="40px" Width="100%" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>

                                        <div class="col-xs-8 col-sm-10">

                                            <asp:TextBox ID="textBoxNumeroWhatsapp" placeholder="número de Whatsapp" Height="40px" Width="100%" CssClass="form-control" runat="server"></asp:TextBox>
                                            
                                        </div>

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