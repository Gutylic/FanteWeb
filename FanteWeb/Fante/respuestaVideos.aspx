<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="respuestaVideos.aspx.cs" Inherits="Fante.respuestaVideos" %>

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

    <link href="css/respuestaVideos.css" rel="stylesheet" />
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

                    <h3 class="visible-md visible-lg" style="margin-top: 10px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Explicación en Videos</h3>

                    <h4 class="visible-xs visible-sm" style="margin-top: 12px;"><a href="indexlogueado.aspx" title="volver" style="color: white;"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;Explicación en Videos</h4>

                </div>

            </div>

            <div class="row">

                <div class="visible-sm visible-md visible-lg col-sm-2 panel panel-default panelBlanco">

                    <div class="panel-body">

                        <h4 style="color: gray; padding-top: 150px">

                            <asp:Label ID="etiquetaSaldo" runat="server"></asp:Label>
                            
                        </h4>

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

                        <div class="col-xs-12">

                            <asp:GridView ID="GridView_Videos" runat="server" OnSelectedIndexChanged="Identificador_Videos" DataKeyNames="id_Respuesta" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Width="100%" ForeColor="#333333">

                                <AlternatingRowStyle BackColor="White" />

                                <Columns>

                                    <asp:TemplateField>

                                        <ItemTemplate>

                                            <asp:LinkButton Height="40px" ItemStyle-VerticalAlign="Middle" Style="margin-left: 25px; margin-top: 15px" ID="LinkBtnEjercicio" runat="server" CommandName="Select" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"><%#Eval("tituloEjercicio") %></asp:LinkButton>

                                        </ItemTemplate>

                                        <HeaderStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:BoundField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" DataField="vencimientoEjercicio" DataFormatString="{0:d}" ShowHeader="False">

                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px"></ItemStyle>
                                    </asp:BoundField>

                                </Columns>

                            </asp:GridView>

                            <div id="Centro" runat="server" visible="false" style="text-align: center; margin-top: 20px">
                                <asp:LinkButton ID="Anterior" runat="server" OnClick="Anterior_Click"><< Anterior &nbsp</asp:LinkButton>
                                <asp:LinkButton ID="Siguiente" runat="server" OnClick="Siguiente_Click">&nbsp Siguiente >></asp:LinkButton>
                            </div>

                            <div id="Extremo" runat="server" style="text-align: center; margin-top: 20px">
                                <asp:LinkButton ID="Anterior_Ultimo" Visible="false" runat="server" OnClick="Anterior_Click"><< Anterior &nbsp</asp:LinkButton>
                                <asp:LinkButton ID="Siguiente_Primero" runat="server" OnClick="Siguiente_Click">&nbsp Siguiente >></asp:LinkButton>
                            </div>
                            
                        </div>

                    </div>
                    
                </div>
                
            </div>

    </form>

</body>

</html>

