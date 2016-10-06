<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="creditoGratis.aspx.cs" Inherits="Fante.creditoGratis" %>

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

    <link href="css/creditoGratis.css" rel="stylesheet" />
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
                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Recomendanos con tus Amigos</h4>

                </div>

            </div>
             
            <div class="row" >

                <div class="visible-sm visible-md visible-lg col-sm-2 panel panel-default panelBlanco">

                    <div class="panel-body">

                        <h4 style="color: gray; padding-top: 150px">Recarga Crédito</h4>

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

                            <h4 class="visible-sm visible-md visible-lg" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 18px;">Carga crédito recomendandonos con tus contactos,<br />
                        de una manera muy simple, escribe el número de<br />
                        Whatsapp de tu contacto, nosotros le enviaremos<br />
                        la aplicación por celular para que se registre,<br />
                        y si lo hace ambos recibirán crédito automáticamente.
                        

                    </h4>

                        <h5 class="visible-xs" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 13px;">Carga crédito recomendandonos con tus contactos,
                                de una manera muy simple, escribe el número de
                        Whatsapp de tu contacto, nosotros le enviaremos
                        la aplicación por celular para que se registre,
                        y si lo hace ambos recibirán crédito automáticamente.
                        
                            </h5> 

                    </div>

                        <div class="col-sm-7 col-md-8">

                            <div class="col-xs-12 altoCambio altoCambioPrimero">

                                <table class="well" style="width: 100%">
                                    <tr>
                                        <td style="width:35%;text-align:center">
                                            <asp:Label ID="etiqueta1" runat="server" Text="Whatsapp de tu contacto 1:"></asp:Label></td>
                                        <td style="width:55%">
                                            <asp:Label ID="etiquetaWhatsapp1" runat="server"></asp:Label></td>
                                        <td style="width:10%">
                                            <a style="font-size:15px;font-weight:bold" class="btn btn-default navbar-btn botonmayor" title="Cargar contacto de Whatsapp" href="nuevoWhatsapp.aspx">></a> </td>
                                    </tr>
                                       
                                </table>

                            </div>

                            <div class="col-xs-12 altoCambio">
                                <table class="well" style="width: 100%">
                                    <tr>
                                        
                                        <td style="width:35%;text-align:center"><asp:Label ID="etiqueta2" runat="server" Text="Whatsapp de tu contacto 2:"></asp:Label></td>
                                <td style="width:55%"><asp:Label ID="etiquetaWhatsapp2" runat="server" ></asp:Label></td>
                                <td style="width:10%"><a style="font-size:15px;font-weight:bold" class="btn btn-default navbar-btn" title="Cargar contacto de Whatsapp" href="nuevoWhatsapp1.aspx">></a> </td>
                            


                                    </tr>
                                </table>
                            </div>

                            <div class="col-xs-12 altoCambio">
                                <table class="well" style="width: 100%">
                                    <tr>
                                        
                                        <td style="width:35%;text-align:center"><asp:Label ID="etiqueta3" runat="server" Text="Whatsapp de tu contacto 3:"></asp:Label></td>
                                <td style="width:55%"><asp:Label ID="etiquetaWhatsapp3" runat="server"></asp:Label></td>
                                <td style="width:10%"><a style="font-size:15px;font-weight:bold" class="btn btn-default navbar-btn" title="Cargar contacto de Whatsapp" href="nuevoWhatsapp2.aspx">></a> </td>
                            


                                    </tr>
                                </table>
                            </div>
                            
                        </div>


                </div>

        
    </div>

            </div>

            <div class="col-xs-12 col-sm-6" style="text-align: center; margin-top:30px">

                <asp:Button ID="enviarContactosYAgregar" runat="server" CssClass="btn btn-primary" Text="Enviar Contactos y Agregar más" OnClick="enviarContactosYAgregar_Click" />
            
            </div>

            <div class="col-xs-12 col-sm-6" style="text-align: center; margin-top:30px">

                <asp:Button ID="enviarContactosYListo" runat="server" CssClass="btn btn-primary" Text="Enviar Contactos y Volver" OnClick="enviarContactosYListo_Click" />
            
            </div>

        </div>
    </form>

</body>

</html>
