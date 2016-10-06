<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seleccionarRegistro.aspx.cs" Inherits="Fante.seleccionarRegistro" %>

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

    <link href="css/seleccionarRegistro.css" rel="stylesheet" />
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
                    <asp:Image ID="imagenFante" runat="server" ImageUrl="~/Image/logo1.png" Style="margin-top: 15px" />
                </div>
                <div class="col-xs-5"></div>

            </div>

            <div class="row visible-xs invisible-sm">
                <div class="col-xs-12 titulo ">Registrate en Fante</div>
            </div>

            <div class="row invisible-xs visible-sm visible-md visible-lg">
                
                <div class="col-xs-12 titulo">Registrate en Fante</div>
                

            </div>

            <div class="row">

                <div class="col-xs-0 col-sm-3 col-md-4 "></div>

                <div class="col-xs-12 col-sm-6 col-md-4 well">

                    <div class="col-xs-12 usaTuNumero">Usa tu número de Whatsapp o tu e-mail, vos elejis...</div>

                    <div class="row">

                        <div class="col-xs-2"></div>

                        <div class="col-xs-8">

                            <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px" Style="padding-left: 40px"> Esperá un momento... </asp:Label>
                        </div>

                        <div class="col-xs-2"></div>

                    </div>

                    <div class="row" style="margin-top: 35px">

                        <div class="col-xs-6" style="text-align: center">
                            <asp:ImageButton ID="botonWhatsapp" runat="server" ImageUrl="~/Image/celular.png" OnClick="botonWhatsapp_Click" />
                        </div>
                        <div class="col-xs-6" style="text-align: center">
                            <asp:ImageButton ID="botonEmail" runat="server" ImageUrl="~/Image/email.png" OnClick="botonEmail_Click" />
                        </div>
                        
                    </div>

                </div>
            </div>
            <div class="col-xs-4"></div>

            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4" style="text-align: right"></div>
                <div class="col-xs-4"></div>

            </div>

        </div>

    </form>

</body>

</html>
