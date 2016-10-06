<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rapiPago.aspx.cs" Inherits="Fante.rapiPago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Fenicia ¡es aprobar!</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
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
<!-- Jquery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   
   
<!-- js Bootstrap 3 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  

<!-- CSS correspondiente a Bootstrap 3 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
   
 

<style>

    .tarjeta_blanca_movil {
        background-color: white; 
        height: 280px;     
        width: 100%;
        border-radius: 5px;        
        border: 1px solid gray;
        margin:20px 0px 20px 0px;
    }

    .contenedor_logo_movil {
        padding-bottom:10px;    
    }

    .contenedor_pesos_movil {
        font-size:12px;
        padding-right:0px; 
        text-align:right;
    }

    .pesos_movil {
        font-size:26px;
        font-weight:bolder;
        
    }

    .contenedor_textbox_movil {
        padding-left:0px
    }

    .contenedor_boton_movil {
        text-align:center;
        padding:10px
    }

    input#TextBox_PagoFacil_Movil {
        height: 34px;
        border-radius: 5px;
        border: 2px solid gray;
        background: Gainsboro;
        text-align: center;
        width: 95%;
        font-size:24px;
        font-weight:bolder;
        color:cornflowerblue;
    }

    article.fondo_amarillo_movil {
        background: url("fondo-amarillo.png") repeat-x 0 0;
        box-shadow: 0 5px 16px rgba(0, 0, 0, 0.3);
        /*otros navegadores*/
        -o-box-shadow: 0 5px 16px rgba(0, 0, 0, 0.3);
        -moz-box-shadow: 0 5px 16px rgba(0, 0, 0, 0.3);
        -webkit-box-shadow: 0 5px 16px rgba(0, 0, 0, 0.3);
    }

</style>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>

<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <article class="fondo_amarillo_movil">
            <div class="container">
                <div class="row">
                    <div class="tarjeta_blanca_movil">
                        <div class="col-xs-12 contenedor_logo_movil">
                            <img class="logo_rapipago_movil" src="logo_rapipago_pagofacil.png" />
                        </div>
                        <div class="col-xs-12 contenedor_pesos_movil">
                            <div class="col-xs-1 pesos_movil">$</div>
                            
                            <div class="col-xs-10  contenedor_textbox_movil">
                                <asp:TextBox ID="TextBox_PagoFacil_Movil" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 contenedor_boton_movil">
                            <asp:UpdatePanel ID="UpdatePanel_Cuenta_Movil" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Boton_Pagofacil_Movil" OnClick="Boton_Pago_Facil_Click" CssClass="btn btn-success" Height="40px" runat="server" Text="Generar Factura" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="col-xs-12" style="text-align: center; margin-top: -5px;  " >
                             <h5>Generá facturas de más de $ 5 (cinco pesos)</h5>
                        </div>
                    </div>
                </div>
            </div>

        </article>

    </form>

</body>

</html>