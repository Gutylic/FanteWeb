<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Fante.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Fante ¡Es Aprobar!</title>
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
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            $('[data-toggle="popover"]').popover({ html: "true" });
            $('#linkAyuda').click(function () { $('[data-toggle="popover"]').popover('hide'); });
            $('#botonIniciarSession').click(function () { $('[data-toggle="popover"]').popover('hide'); });
        });

    </script>

    <link href="css/index.css" rel="stylesheet" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="container">

            <div class="row" style="text-align: right; margin-top: 15px">

                <div class="col-xs-12"></div>

                <a href="#" id="linkAyuda">Ayuda</a>

                <a href="#" class="contenedorNuevePuntos">

                    <span class="glyphicon glyphicon-th nuevePuntos" aria-hidden="true"></span>

                </a>

                <asp:Button ID="botonIniciarSession" class="btn btn-primary" runat="server" Text="Iniciar sessión" OnClick="botonIniciarSession_Click" />

            </div>
            
            <div class="row">

                <div class="col-xs-12 image" style="text-align: center">

                    <img src="Image/logo.png" class="imagenLogo" />

                </div>

            </div>

            <div class="row">

                <div class="col-xs-0 col-sm-2"></div>

                <div class="col-xs-12 col-sm-8 divCamara">

                    <asp:LinkButton ID="ImageCamara" class="glyphicon glyphicon-camera form-control form camaraFotos" OnClick="ImageCamara_Click" runat="server">
                        
                        <div class="escritoCamara" >Sube la foto de tu ejercicio</div>

                    </asp:LinkButton>

                    <div class="col-xs-0 col-sm-2"></div>

                </div>

            </div>

        </div>
        
        <div class="row">

            <div class="col-xs-0 col-sm-2"></div>

            <div class="col-xs-6 col-sm-4 suerte">

                <asp:Button ID="btnResolver" class="btn btn-default resover" runat="server" Text="Resolvé mi Ejercicio" OnClick="ImageCamara_Click" />

            </div>

            <div class="col-xs-6 col-sm-4 suerte">

                <asp:Button ID="btnExplicar" class="btn btn-default explicar" runat="server" Text="Explicamelo en Vídeo" OnClick="ImageCamara_Click" />

            </div>

            <div class="col-xs-0 col-sm-2"></div>

        </div>
        
        <asp:Panel ID="PanelError" runat="server" Visible="false">

            <div class="row">

                <div class="col-xs-0 col-sm-3 col-md-4"></div>

                <div class="alert alert-danger col-xs-12 col-sm-6 col-md-4 panelRojo" role="alert">

                    <div class="row">

                        <div class="col-xs-12">

                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            Ups... para poder usar el servicio debe encontrarse registrado                    
                            <h3>Registrate es muy simple  </h3>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-xs-6">

                            <a href="logueoUsuario.aspx" runat="server" class="btn btn-primary" style="color: white">Ya soy Usuario</a>

                        </div>

                        <div class="col-xs-6">

                            <a href="seleccionarRegistro.aspx" runat="server" class="btn btn-primary" style="color: white; margin-left: -30px">Quiero Registrarme</a>

                        </div>

                    </div>

                </div>

                <div class="col-xs-0 col-sm-3 col-md-4"></div>
                
            </div>

        </asp:Panel>
        
    </form>

</body>

</html>
