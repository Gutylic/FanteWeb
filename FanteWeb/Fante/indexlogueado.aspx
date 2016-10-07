<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexlogueado.aspx.cs" Inherits="Fante.indexlogueado" %>

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

    <script type="text/javascript">

        $(function () {

            $("[data-toggle=popover]").popover();


            $("#alumnoRegistrado").popover({
                html: true,
                content: function () {
                    return $("#alumno-content").html();
                },

            });

            $("#todo").popover({
                html: true,
                content: function () {
                    return $("#todo-content").html();
                },

            });

            $('#todo').click(function () {
                $('[data-toggle="popover"]').popover({ html: "true" });
                $('#alumnoRegistrado').popover('hide');
                $('#todo').popover({ html: "true" });

            });
            $('#alumnoRegistrado').click(function () {
                $('[data-toggle="popover"]').popover({ html: "true" });
                $('#todo').popover('hide');
                $('#alumnoRegistrado').popover({ html: "true" });

            });

            //$('#alumnoRegistrado').popover({ html: "true" });
            // $('[data-toggle="popover"]').popover({ html: "true" });
            $('#linkAyuda').click(function () { $('[data-toggle="popover"]').popover('hide'); });
            //$('#alumnoRegistrado').click(function () { $('[data-toggle="popover"]').popover('hide'); });

        });


        function MostrarLabelOK() {

            setTimeout("OcultarLabelOK()", 5000);

            var msj = document.getElementById("etiquetaOK");

            msj.style.visibility = "visible";

        }
        
        function OcultarLabelOK() {

            var msj = document.getElementById("etiquetaOK");

            msj.style.visibility = "hidden";

        }

        function MostrarLabelERROR() {

            setTimeout("OcultarLabelERROR()", 5000);

            var msj = document.getElementById("etiquetaFoul");


            msj.style.visibility = "visible";

        }

        function OcultarLabelERROR() {

            var msj = document.getElementById("etiquetaFoul");


            msj.style.visibility = "hidden";

        }

        function MostrarLabelERRORSUP() {

            setTimeout("OcultarLabelERRORSUP()", 5000);

            var msj = document.getElementById("etiquetaFoulSup");

            msj.style.visibility = "visible";

        }

        function OcultarLabelERRORSUP() {

            var msj = document.getElementById("etiquetaFoulSup");

            msj.style.visibility = "hidden";

        }

        function bigImg1(x) {
            document.getElementById("ImagenAmigo").src = "Image/AmigoM.png";
        }

        function normalImg1(x) {
            document.getElementById("ImagenAmigo").src = "Image/Amigo.png";
        }
                   
        function bigImg2(x) {
            document.getElementById("ImagenCarga").src = "Image/cargaM.png";
        }

        function normalImg2(x) {
            document.getElementById("ImagenCarga").src = "Image/carga.png";
        }

        function bigImg3(x) {
            document.getElementById("ImagenEjercicios").src = "Image/ejerciciosM.png";
        }

        function normalImg3(x) {
            document.getElementById("ImagenEjercicios").src = "Image/ejercicios.png";
        }
        function bigImg4(x) {
            document.getElementById("ImagenVideos").src = "Image/videosM.png";
        }

        function normalImg4(x) {
            document.getElementById("ImagenVideos").src = "Image/videos.png";
        }
    </script>

    <link href="css/indexlogueo.css" rel="stylesheet" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="container">

            <div class="row contenedorSuperior">

                <div class="col-xs-12"></div>

                <a href="#" id="linkAyuda">Ayuda</a>

                <a href="#" id="todo" tabindex="0" data-placement="bottom" class="contendorNuevePuntos">

                    <span class="glyphicon glyphicon-th nuevePuntos" aria-hidden="true"></span>

                </a>

                <a href="#" id="alumnoRegistrado" style="outline:0px" tabindex="0" data-placement="bottom">

                    <img alt="" src="Image/alumno.png" style="margin-top: -7px;" />

                </a>

            </div>

            <div id="alumno-content" class="hidden">
                <div>
                    <div class="contenidoAlumno">

                        <asp:Label ID="etiquetaUsuario" runat="server"></asp:Label>

                        <asp:Label ID="etiquetaSaldo" runat="server"></asp:Label>

                        <asp:Button ID="botonMiCuenta" CssClass='btn btn-info' runat="server" Text="Mi Cuenta" OnClick="botonMiCuenta_Click" />

                        <img src='Image/alumnoPerfil.png' style="margin-top: -100px;" />

                        <hr class="linea">

                        <asp:Button Width="85%" Height="40px" ID="botonCerrarSession" CssClass='btn btn-default' runat="server" Text="Cerrar Sesión" OnClick="botonCerrarSession_Click" />
                        
                    </div>

                </div>

            </div>

            <div id="todo-content" class="hidden">

                <div style='width: 170px'>

                    <asp:ImageButton ID="ImagenAmigo" onmouseover="bigImg1(this)" onmouseout="normalImg1(this)" ImageUrl="Image/Amigo.png"  OnClick="ImagenAmigo_Click" runat="server" />
                    <asp:ImageButton ID="ImagenCarga" onmouseover="bigImg2(this)" onmouseout="normalImg2(this)" ImageUrl="Image/carga.png" OnClick="ImagenCarga_Click" runat="server" />
                    <asp:ImageButton ID="ImagenEjercicios" onmouseover="bigImg3(this)" onmouseout="normalImg3(this)" ImageUrl="Image/ejercicios.png" OnClick="ImagenEjercicios_Click" runat="server" />
                    <asp:ImageButton ID="ImagenVideos" onmouseover="bigImg4(this)" onmouseout="normalImg4(this)" ImageUrl="Image/videos.png" OnClick="ImagenVideos_Click" runat="server" />

                </div>


            </div>

            <div class="row">

                <div class="col-xs-12 image" style="text-align: center">

                    <img src="Image/logo.png" class="imagenLogo" style="margin-top: 55px" />

                </div>

            </div>

            <div class="row">

                <div class="col-xs-0 col-sm-2"></div>
                
                <div class="col-xs-12 col-sm-8 contenedorSubir">

                    <asp:FileUpload ID="SubirAdjunto" runat="server" Height="30px" />

                </div>

            </div>

        </div>
        
        <div class="row">

            <div style="margin-top: 0px; visibility: hidden; text-align: center" id="etiquetaFoul">
                <asp:Label runat="server" CssClass="visible-xs invisible-sm" ID="etiquetaErronea" ForeColor="Red">UPS... tu ejercicio no se envio,<br /> observa si tienes crédito</asp:Label>
                <asp:Label runat="server" CssClass="invisible-xs visible-sm" ID="etiquetaErroneaG" ForeColor="Red" Font-Size="20px" Style="margin-bottom: 15px">UPS... tu ejercicio no se envio, observa si tienes crédito</asp:Label>
                <asp:Label runat="server" CssClass="invisible-xs visible-md visible-lg" ID="etiquetaErroneaSG" ForeColor="Red" Font-Size="24px" Style="margin-bottom: 10px">UPS... tu ejercicio no se envio, observa si tienes crédito</asp:Label>
            </div>

            <div style="margin-top: -40px; visibility: hidden; text-align: center" id="etiquetaK">
                <asp:Label runat="server" ID="etiquetaErroneaSUP" CssClass="visible-xs invisible-sm" ForeColor="Red">tu foto es demasiado grande,<br /> envia fotos de menos de 2mb.</asp:Label>
                <asp:Label runat="server" CssClass="invisible-xs visible-sm" ID="etiquetaErroneaSUPG" ForeColor="Red" Font-Size="20px">tu foto es demasiado grande, envia fotos de menos de 2mb.</asp:Label>
                <asp:Label runat="server" CssClass="invisible-xs visible-md visible-lg" ID="etiquetaErroneaSUPSG" ForeColor="Red" Font-Size="24px" Style="margin-bottom: 15px">tu foto es demasiado grande, envia fotos de menos de 2mb.</asp:Label>
            </div>

            <div style="margin-top: -40px; visibility: hidden; text-align: center" id="etiquetaOK">
                <asp:Label ID="etiquetaCorrecto" runat="server" CssClass="visible-xs invisible-sm" ForeColor="Blue">tu archivo se envió correctamente,<br /> observa si tienes crédito.</asp:Label>
                <asp:Label ID="etiquetaCorrectoG" runat="server" CssClass="invisible-xs visible-sm" ForeColor="Blue" Font-Size="20px">tu archivo se envio correctamente, observa si tienes crédito.</asp:Label>
                <asp:Label ID="etiquetaCorrectoSG" runat="server" CssClass="invisible-xs visible-md visible-lg" ForeColor="Blue" Font-Size="24px" Style="margin-bottom: 15px">tu archivo se envio correctamente, observa si tienes crédito.</asp:Label>
            </div>

        </div>

        <div class="row">

            <div class="col-xs-0 col-sm-2"></div>

            <div class="col-xs-6 col-sm-4 suerte">

                <asp:Button ID="ResolverEjercicio" class="btn btn-default resover" Style="margin-top: 0px" runat="server" Text="Resolvé mi Ejercicio" OnClick="ResolverEjercicio_Click" />

            </div>

            <div class="col-xs-6 col-sm-4 suerte" style="margin-left: -18px">

                <asp:Button ID="ResolverVideo" runat="server" Style="margin-top: 0px" Text="Explicamelo en Vídeo" class="btn btn-default explicar" OnClick="ResolverVideo_Click" />

            </div>

            <div class="col-xs-0 col-sm-2"></div>

        </div>
        
    </form>

</body>

</html>
