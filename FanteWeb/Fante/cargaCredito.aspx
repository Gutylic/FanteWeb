<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cargaCredito.aspx.cs" Inherits="Fante.cargaCredito" %>

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

    <link href="css/cargaCredito.css" rel="stylesheet" />
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

                    <h3 class="visible-md visible-lg" style="margin-top: 10px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Carga Crédito</h3>
                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Carga Crédito</h4>

                </div>

            </div>

            <div class="row">

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

                            <h4 class="visible-sm visible-md visible-lg" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 18px;">Carga crédito para consultas desde este panel<br />
                                puedes optar por pagar con tarjetas prepagas,<br />
                                consiguela en los kioscos adheridos o carga<br />
                                credito generando tus propias facturas y pagando<br />
                                por tu medio mas conveniente. Y si te quedas sin<br />
                                crédito recuerda que te prestamos y luego cuando<br />
                                cargues nuevamente nos devolveras el mismo.
                            </h4>

                            <h5 class="visible-xs" style="padding-top: 8px; padding-left: 14px; line-height: 25px; font-size: 13px">Carga crédito para consultas desde este panel
                                puedes optar por pagar con tarjetas prepagas,
                                consiguela en los kioscos adheridos o carga
                                credito generando tus propias facturas y pagando
                                por tu medio mas conveniente. Y si te quedas sin
                                crédito recuerda que te prestamos y luego cuando
                                cargues nuevamente nos devolveras el mismo.   
                            </h5>

                        </div>


                        <div class="col-sm-7 col-md-8">

                            <div class="col-xs-12 altoCambio altoCambioPrimero">

                                <table class="well" style="width: 100%;">
                                    <tr>
                                        <td style="width: 30%; text-align: center">
                                            <asp:Label ID="etiqueta1" runat="server" Text="Tarjeta Prepaga"></asp:Label></td>
                                        <td style="width: 55%">
                                            <asp:TextBox ID="textBoxTarjetaPrepaga" placeholder="cargá código" Width="80%" Style="font-size: 15px; margin-left: 20px; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 15%">
                                            <asp:Button ID="botonTarjetaPrepaga" runat="server" Text="cargar" Style="font-size: 15px; font-weight: bold" CssClass="btn btn-primary navbar-btn" OnClick="botonTarjetaPrepaga_Click" /></td>
                                    </tr>

                                </table>

                            </div>

                            <div class="col-xs-12 altoCambio">

                                <table class="well" style="width: 100%">

                                    <tr>
                                        <td style="width: 30%; text-align: center">
                                            <asp:Label ID="etiqueta2" runat="server" Text="Prestamo SOS"></asp:Label></td>
                                        
                                        <td style="width: 55%; text-align: center">
                                            <asp:Label ID="subEtiquetaPrestamoSOS" runat="server" Text="(sin crédito te prestamos saldo...)"></asp:Label></td>
                                        
                                        <td style="width: 15%">
                                            <asp:Button ID="botonPrestamoSOS" runat="server" Text="cargar" Style="font-size: 15px; font-weight: bold" class="btn btn-primary navbar-btn" OnClick="botonPrestamoSOS_Click" /></td>
                                    </tr>

                                </table>

                            </div>
                            
                            <div class="col-xs-12 altoCambio">

                                <table class="well" style="width: 100%">

                                    <tr>
                                        <td style="width: 29%; text-align: center">
                                            <asp:Label ID="etiqueta3" runat="server" Text="RapiPago-PagoFacil"></asp:Label></td>
                                        <td style="width: 1%">
                                            <asp:Label ID="pesoRapipago" runat="server" Style="font-size: 13px; font-weight: bold; margin-left: 2px;" Text="$"></asp:Label></td>

                                        <td style="width: 55%">

                                            <asp:TextBox ID="TextBox_PagoFacil" Width="80%" placeholder="cargá crédito en pesos" Style="font-size: 15px; margin-left: 20px" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 15%">
                                            <asp:Button ID="botonRapiPago" runat="server" Text="cargar" Style="font-size: 15px; font-weight: bold" class="btn btn-primary navbar-btn" OnClick="botonRapiPago_Click" /></td>
                                    </tr>

                                </table>

                            </div>

                            <div class="col-xs-12 altoCambio">

                                <table class="well" style="width: 100%">

                                    <tr>
                                        <td style="width: 29%; text-align: center">
                                            <asp:Label ID="etiqueta4" runat="server" Text="Tarjeta de Crédito"></asp:Label></td>
                                        <td style="width: 1%">
                                            <asp:Label ID="pesoMercadoPago" runat="server" Style="font-size: 13px; font-weight: bold; margin-left: 2px;" Text="$"></asp:Label></td>
                                        <td style="width: 55%">
                                            <asp:TextBox ID="TextBox_MercadoPago" Width="80%" placeholder="cargá crédito en pesos" Style="font-size: 15px; margin-left: 20px" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 15%">
                                            <asp:Button ID="botonMercadoPago" runat="server" Text="cargar" Style="font-size: 15px; font-weight: bold" CssClass="btn btn-primary navbar-btn" OnClick="botonMercadoPago_Click" /></td>
                                    </tr>

                                </table>

                            </div>

                            <div class="col-xs-12 altoCambio">

                                <table class="well" style="width: 100%">

                                    <tr>
                                        <td style="width: 28%; text-align: center">
                                            <asp:Label ID="etiqueta5" runat="server" Text="Paypal"></asp:Label></td>
                                        <td style="width: 1%">
                                            <asp:Label ID="Label1" runat="server" Style="font-size: 13px; font-weight: bold; margin-left: 2px;" Text="U$D"></asp:Label></td>
                                        <td style="width: 55%">

                                            <asp:TextBox ID="TextBox_PayPal" Width="85%" placeholder="cargá crédito en dolares" Style="font-size: 15px; margin-left: 10px" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 15%">
                                            <asp:Button ID="botonPaypal" runat="server" Text="cargar" Style="font-size: 15px; font-weight: bold" class="btn btn-primary navbar-btn" OnClick="botonPaypal_Click" /></td>
                                    </tr>

                                </table>
                                
                            </div>

                        </div>

                    </div>

                </div>

                <div class="col-xs-12" style="text-align: center">

                    <asp:Label runat="server" ID="etiquetaExito" Visible="false" ForeColor="blue" Font-Size="13px">tarjeta cargada con éxito</asp:Label>
                    <asp:Label runat="server" ID="etiquetaTarjetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">tu tarjeta no puede ser cargada</asp:Label>
                    <asp:Label runat="server" ID="etiquetaCorrectaPP" Visible="false" ForeColor="blue" Font-Size="13px">Esperando para generar tu factura</asp:Label>
                    <asp:Label runat="server" ID="etiquetaErroneaPP" Visible="false" ForeColor="Red" Font-Size="13px">realiza facturas de mas de U$D 10 (diez dolares)</asp:Label>
                    <asp:Label runat="server" ID="etiquetaCorrectaMP" Visible="false" ForeColor="blue" Font-Size="13px">Esperando para generar tu factura</asp:Label>
                    <asp:Label runat="server" ID="etiquetaErroneaMP" Visible="false" ForeColor="Red" Font-Size="13px">realiza facturas de mas de $5 (cinco pesos)</asp:Label>
                    <asp:Label runat="server" ID="etiquetaCorrectaRP" Visible="false" ForeColor="blue" Font-Size="13px">Esperando para generar tu factura</asp:Label>
                    <asp:Label runat="server" ID="etiquetaErroneaRP" Visible="false" ForeColor="Red" Font-Size="13px">realiza facturas de mas de $5 (cinco pesos)</asp:Label>
                    <asp:Label runat="server" ID="etiquetaCorrecta" Visible="false" ForeColor="blue" Font-Size="13px">tu prestamo SOS se realizo exitosamente</asp:Label>
                    <asp:Label runat="server" ID="etiquetaErroneaPedida" Visible="false" ForeColor="Red" Font-Size="13px">tu prestamo SOS ya fué pedido</asp:Label>
                    <asp:Label runat="server" ID="etiquetaErronea" Visible="false" ForeColor="Red" Font-Size="13px">el pedido no pudo ser realizado</asp:Label>
                    
                </div>

            </div>

            <div class="col-xs-12 " style="text-align: center;">

                <asp:Button ID="botonCancelar" runat="server" CssClass="btn btn-primary" Text="Volver al panel" OnClick="botonCancelar_Click" />
                
            </div>

        </div>

    </form>

</body>

</html>
