<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarseCelular.aspx.cs" Inherits="Fante.registrarseCelular" %>

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

    <link href="css/registrarseCelular.css" rel="stylesheet" />
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

        <div class="row well">
            <div class="col-xs-2" style="text-align: center">
                <asp:Image ID="ImagenLogo" runat="server" ImageUrl="~/Image/logo2.png" /></div>
            <div class="col-xs-10"></div>
        </div>

        <div class="container">
            <%--<div class="row">
                <div class ="col-xs-3"></div>
                <div class ="col-xs-6" style="text-align:center; font-size:40px; margin-top:5px; color:gray">Crea tu cuenta Fante usando Whatsapp</div>
                <div class ="col-xs-3"></div>

            </div>--%>

            <div class="row visible-xs invisible-sm">
                <div class="col-xs-12 titulo ">Crea tu cuenta Fante usando Whatsapp</div>
            </div>

            <div class="row  invisible-xs visible-sm visible-md visible-lg">


                <div class="col-xs-12 titulo">Crea tu cuenta Fante usando Whatsapp</div>


            </div>

            
                <%--<div class="col-xs-6 panel panel-default" style="text-align:center; margin-top:60px">
                    <div class="panel-body">
                        <h1 style="margin-top:-5px">Solo necesitas una cuenta</h1>
                        <h4>Y Accede a Fante tu profesor particular en el hogar las 24 horas</h4>
                        <h5>No olvides buscar la aplicación para tu celular en los centros de descarga</h5>
                        <h5 style="margin-top:43px; color:gray">Puedes registrarte por cualquier medio, te recomendamos que lo hagas por celular asi contaras con los beneficios de consultar y recibir tus ejercicios resueltos en tu celular</h5>
                        <asp:Image ID="Image44" style="margin-top:27px" runat="server" ImageUrl="~/Image/materias.png"/>
                    </div>
                </div>--%>


                

                <div class="row">

                    <div class="col-xs-0 col-sm-3  "></div>
<div class="col-xs-12 col-sm-6  well contenedor">
                    <asp:Panel ID="PanelRegistrarse" runat="server" Visible="true">

                        
                            <div class="col-xs-12">
                                <h3 class="registrese">Registrese por celular</h3>
                            </div>
                            <div class="col-xs-12">
                                <span>comienza a enviar y recibir tus ejercicios por Whatsapp.</span>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-lg-2">
                                    <asp:TextBox ID="codigoPais" placeholder="ej: +54" class="form-control" runat="server" Height="40px" Width="100%" ForeColor="Black">
                                    </asp:TextBox>

                                </div>
                                <div class="col-xs-8 col-lg-10">

                                    <asp:TextBox ID="numeroCelular" placeholder="Ingresa tu número de Whatsapp" class="form-control" runat="server" Height="40px" Width="100%" ForeColor="Black">
                        
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="claveUsuario" MaxLength="10" placeholder="Ingresa tu clave" class="form-control" runat="server" Height="40px" Width="100%" ForeColor="Black">
                       
                                    </asp:TextBox>
                                </div>

                                <div class="col-xs-6">
                                    <asp:TextBox ID="reClaveUsuario" MaxLength="10" placeholder="Reingresa tu clave" class="form-control" runat="server" Height="40px" Width="100%" ForeColor="Black"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-lg-3">
                                    <asp:Image ID="ImagenCaptcha" runat="server" Width="100%" Height="39px" />
                                </div>
                                <div class="col-xs-8 col-lg-9">
                                    <asp:TextBox ID="captchaTextBox" placeholder="Ingrese la imagen" class="form-control" runat="server" Height="40px" Width="100%" ForeColor="Black">
                        
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="row">



                                <div class="col-xs-12">
                                    <asp:Label runat="server" ID="etiquetaErroneaNumero" Visible="false" ForeColor="Red" Font-Size="13px">El número de celular es incorrectos, inténtalo de nuevo.</asp:Label>
                                    <asp:Label runat="server" ID="etiquetaErroneaReClave" Visible="false" ForeColor="Red" Font-Size="13px">Las claves escritas son distintas, inténtalo de nuevo.</asp:Label>
                                    <asp:Label runat="server" ID="etiquetaErroneaClave" Visible="false" ForeColor="Red" Font-Size="13px">La clave debe tener mas de 6 caracteres, inténtalo de nuevo.</asp:Label>
                                    <asp:Label runat="server" ID="etiquetaErroneaCatcha" Visible="false" ForeColor="Red" Font-Size="13px">La imagen escrita esta equivocada, inténtalo de nuevo.</asp:Label>

                                    <asp:Label ID="etiquetaEsperando" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px" Style="padding-left: 40px"> Esperá un momento... </asp:Label>
                                </div>



                            </div>
                            <asp:Button ID="botonRegistrarme" runat="server" Text="Registrarme" CssClass="btn btn-primary" OnClick="botonRegistrarme_Click" />
                        

                    </asp:Panel>
</div>


<div class="row">

                    
                <div class="col-xs-0 col-sm-3 "></div>

<div class="col-xs-12 col-sm-6 contenedorError">

                <asp:Panel ID="PanelnoRegistrado" CssClass="well" runat="server" Visible="false">
                    
                        <h3 class="registreseError">Tu registro por celular</h3>
                        <span>no puede realizarse, ya te encuentras registrado.</span>
                        <div class="col-xs-12">

                            <asp:Label ID="esperandoEtiqueta" runat="server" Visible="false" ForeColor="Blue" Font-Size="13px"> Esperá un momento... </asp:Label>
                        </div>
                        <asp:Button ID="botonContraseña" runat="server" Text="Recuperar Contraseña" CssClass="btn btn-primary" OnClick="botonContraseña_Click" />
                    
                </asp:Panel>
            </div>

     </div>
           

        </div>  


     



    </form>
</body>
</html>
