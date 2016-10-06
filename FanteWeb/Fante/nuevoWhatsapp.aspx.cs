using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class nuevoWhatsapp : System.Web.UI.Page
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["id_Usuario"] == null)
                {
                    Response.Redirect("index.aspx");
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
        }

        int corregidoPaisNumero;
        long corregidoCelularNumero;

        protected void botonModificar_Click(object sender, EventArgs e)
        {
            etiquetaEsperando.Visible = true;

            string corregidoPaisCadena = textBoxNumeroPais.Text.Replace('+', ' ');
            corregidoPaisCadena = corregidoPaisCadena.TrimStart();


            if (textBoxNumeroPais.Text == null && textBoxNumeroWhatsapp.Text == null)
            {               
                return;
            }

            if (textBoxNumeroWhatsapp.Text.Length > 9 && textBoxNumeroWhatsapp.Text.Length < 14)
            {
                etiquetaErronea.Visible = false;
                etiquetaErroneaNumero.Visible = true;
                etiquetaEsperando.Visible = false;
            }

            try
            {

                corregidoPaisNumero = int.Parse(corregidoPaisCadena);
                corregidoCelularNumero = long.Parse(textBoxNumeroWhatsapp.Text);

            }
            catch
            {
                etiquetaErronea.Visible = false;
                etiquetaErroneaNumero.Visible = true;
                etiquetaEsperando.Visible = false;

                textBoxNumeroPais.Text = string.Empty;
                textBoxNumeroWhatsapp.Text = string.Empty;
                return;
            }

            db.recomendarUsuarioCelular(corregidoPaisNumero,corregidoCelularNumero,int.Parse(Session["id_Usuario"].ToString()));

            Session["num1"] = corregidoCelularNumero;
            Session["cod1"] = corregidoPaisNumero;

            Response.Redirect("creditoGratis.aspx?cod1=" + Session["cod1"] + "&num1=" + Session["num1"] + "&cod2=" + Session["cod2"] + "&num2=" + Session["num2"] + "&cod3=" + Session["cod3"] + "&num3=" + Session["num3"]);
            return;
            


        }

        protected void botonCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("creditoGratis.aspx");
        }


    }
}