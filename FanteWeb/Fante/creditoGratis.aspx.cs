using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class creditoGratis : System.Web.UI.Page
    {
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

                nombrePerfil.Text = "Perfil del Usuario para modificar: + " + convertirNumero;

            }
            catch
            {

                nombrePerfil.Text = "Perfil del Usuario para modificar: " + Session["nickUsuario"].ToString();
            
            }
               
            string cod1 = Request.QueryString["cod1"];
            string num1 = Request.QueryString["num1"];            
            string cod2 = Request.QueryString["cod2"];
            string num2 = Request.QueryString["num2"];
            string cod3 = Request.QueryString["cod3"];
            string num3 = Request.QueryString["num3"];

            if (cod1 == string.Empty && num1 == string.Empty)
            {
                etiquetaWhatsapp1.Text = cod1 + " " + num1;
            }
            else
            {
                etiquetaWhatsapp1.Text = "+" + cod1 + " " + num1;
            }

            if (cod2 == string.Empty && num2 == string.Empty)
            {
                etiquetaWhatsapp2.Text = cod2 + " " + num2;
            }
            else
            {
                etiquetaWhatsapp2.Text = "+" + cod2 + " " + num2;
            }

            if (cod3 == string.Empty && num3 == string.Empty)
            {
                etiquetaWhatsapp3.Text = cod3 + " " + num3;
            }
            else
            {
                etiquetaWhatsapp3.Text = "+" + cod3 + " " + num3;
            }

        }

        protected void enviarContactosYAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("creditoGratis.aspx?cod1=&num1=&cod2=&num2=&cod3=&num3=");
        }

        protected void enviarContactosYListo_Click(object sender, EventArgs e)
        {
            Response.Redirect("indexlogueado.aspx");
        }

    }

}