using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mercadopago;
using System.Collections;

namespace Fante
{
    public partial class cargaCredito : System.Web.UI.Page
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
        decimal? resultado;
        string respuesta;
        int? valor;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["id_Usuario"] == null)
                {
                    Response.Redirect("index.aspx");
                }

            }

            try
            {

                long convertirNumero = long.Parse(Session["nickUsuario"].ToString());

                nombrePerfil.Text = "Usuario: + " + convertirNumero;

            }
            catch
            {

                nombrePerfil.Text = "Usuario: " + Session["nickUsuario"].ToString();

            }
        }

        public void botonPrestamoSOS_Click(object sender, EventArgs e)
        {
            db.cargaSOSCelular(int.Parse(Session["id_Usuario"].ToString()), ref resultado);
            db.loguearUsuarioPC(Session["nickUsuario"].ToString(), Session["usuarioPassword"].ToString(), ref respuesta);

                string[] idPlata = new string[2];
                idPlata = respuesta.Split('x');

                Session["plataUsuario"] = idPlata[1];
      
            if (resultado == -1)
            {
                etiquetaCorrecta.Visible = false;
                etiquetaErronea.Visible = false;
                etiquetaErroneaPedida.Visible = true;
                return;
            }
            if (resultado == 0)
            {
                etiquetaCorrecta.Visible = false;
                etiquetaErronea.Visible = true;
                etiquetaErroneaPedida.Visible = false;
                return;
            }
            else
            {
                etiquetaCorrecta.Visible = true;
                etiquetaErronea.Visible = false;
                etiquetaErroneaPedida.Visible = false;
                return;
            }

        }


        public void botonTarjetaPrepaga_Click(object sender, EventArgs e)
        {

            db.avisoPrestamoPedido(int.Parse(Session["id_Usuario"].ToString()), ref valor);

            try
            {

                if (valor == -1)
                {
                    db.cargarCreditoTarjetaPagoParcialSOS(int.Parse(Session["id_Usuario"].ToString()), int.Parse(textBoxTarjetaPrepaga.Text), ref valor);

                    if (valor == 1)
                    {
                        etiquetaExito.Visible = true;
                        etiquetaTarjetaErronea.Visible = false;
                        return;

                    }
                    if (valor == -1)
                    {
                        etiquetaExito.Visible = false;
                        etiquetaTarjetaErronea.Visible = true;
                        return;

                    }

                }
                if (valor == 1)
                {
                    db.cargarCreditoTarjetaPagoTotalSOS(int.Parse(Session["id_Usuario"].ToString()), int.Parse(textBoxTarjetaPrepaga.Text), ref valor);

                    if (valor == 1)
                    {
                        etiquetaExito.Visible = true;
                        etiquetaTarjetaErronea.Visible = false;
                        return;

                    }
                    if (valor == -1)
                    {
                        etiquetaExito.Visible = false;
                        etiquetaTarjetaErronea.Visible = true;
                        return;

                    }


                }

            }
            catch 
            {

                etiquetaExito.Visible = false;
                etiquetaTarjetaErronea.Visible = true;
                return;
            
            }

        }


        decimal Valor_Carga;

        protected void botonRapiPago_Click(object sender, EventArgs e)
        {
            etiquetaCorrectaRP.Visible = true;

            try
            {

                Valor_Carga = Convert.ToDecimal(TextBox_PagoFacil.Text);

            }
            catch (Exception)
            {

                etiquetaCorrectaRP.Visible = false;
                etiquetaErroneaRP.Visible = true;

                TextBox_PagoFacil.Text = string.Empty;

                return;

            }


            if (Valor_Carga < 5)
            {

                etiquetaCorrectaRP.Visible = false;
                etiquetaErroneaRP.Visible = true;

                TextBox_PagoFacil.Text = string.Empty;

                return;

            }

            MP mp = new MP("7071654091217780", "F4SUQfv2CA4YUvPj0VsFROGywMkcYvyC");

            Hashtable preference = mp.createPreference("{\"items\":[{\"title\":\"clases\",\"quantity\":1,\"currency_id\":\"ARS\",\"unit_price\":" + Valor_Carga + "}],\"external_reference\":\"" + (string)Session["nickUsuario"] + "\"}");


            String accessToken = mp.getAccessToken();

            Response.Redirect((((Hashtable)preference["response"])["init_point"]).ToString());
        }

        protected void botonMercadoPago_Click(object sender, EventArgs e)
        {
            etiquetaCorrectaMP.Visible = true;

            try
            {

                Valor_Carga = Convert.ToDecimal(TextBox_MercadoPago.Text); 

            }
            catch (Exception)
            {

                etiquetaCorrectaMP.Visible = false;
                etiquetaErroneaMP.Visible = true;

                TextBox_MercadoPago.Text = string.Empty;

                return;

            }


            if (Valor_Carga < 5)
            {
                etiquetaCorrectaMP.Visible = false;
                etiquetaErroneaMP.Visible = true;

                TextBox_MercadoPago.Text = string.Empty;

                return;

            }

            MP mp = new MP("7071654091217780", "F4SUQfv2CA4YUvPj0VsFROGywMkcYvyC");

            Hashtable preference = mp.createPreference("{\"items\":[{\"title\":\"clases\",\"quantity\":1,\"currency_id\":\"ARS\",\"unit_price\":" + Valor_Carga + "}],\"external_reference\":\"" + (string)Session["nickUsuario"] + "\"}");


            String accessToken = mp.getAccessToken();

            Response.Redirect((((Hashtable)preference["response"])["init_point"]).ToString());
        }

        protected void botonPaypal_Click(object sender, EventArgs e)
        {
            etiquetaCorrectaPP.Visible = true;

            try
            {

                Valor_Carga = Convert.ToDecimal(TextBox_PayPal.Text); // analisis de donde pidio la carga pc o movil

            }
            catch
            {
                etiquetaCorrectaMP.Visible = false;
                etiquetaErroneaMP.Visible = true;

                TextBox_PayPal.Text = string.Empty;

                return;

            }



            if (Valor_Carga < 10)
            {

                etiquetaCorrectaMP.Visible = false;
                etiquetaErroneaMP.Visible = true;
                TextBox_PayPal.Text = string.Empty;

                return;
                
            }


            Response.Redirect("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=Correodelosprofesores@gmail.com&item_name=Carga_de_Credito&amount=" + Valor_Carga + "&no_shipping=1&item_number=" + (string)Session["nickUsuario"]);

        
        }

        protected void botonCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("indexlogueado.aspx");
        }

    }

}