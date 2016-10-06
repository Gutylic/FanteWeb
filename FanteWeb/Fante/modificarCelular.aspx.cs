using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class modificarCelular : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        int? resultado;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

                List<mostrarPerfilUsuarioPCResult> Datos;

                Datos = db.mostrarPerfilUsuarioPC(int.Parse(Session["id_Usuario"].ToString())).ToList();


                if (Datos[0].codigoPais == null)
                {
                    textBoxNumeroPais.Text = string.Empty;
                }
                else
                {
                    textBoxNumeroPais.Text = "+" + (Datos[0].codigoPais).ToString();
                }
                if (Datos[0].numeroCelular == null)
                {
                    textBoxNumeroWhatsapp.Text = string.Empty;
                }
                else
                {
                    textBoxNumeroWhatsapp.Text = (Datos[0].numeroCelular).ToString();
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
                db.actualizarPerfilCelularPC(int.Parse(Session["id_Usuario"].ToString()), null, null, ref resultado);
                Response.Redirect("perfilUsuario.aspx");
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

            db.actualizarPerfilCelularPC(int.Parse(Session["id_Usuario"].ToString()), corregidoPaisNumero, corregidoCelularNumero, ref resultado);

            if (resultado == -1 || resultado == -6)
            {
                etiquetaErronea.Visible = true;
                etiquetaErroneaNumero.Visible = false;
                etiquetaEsperando.Visible = false;
                textBoxNumeroPais.Text = string.Empty;
                textBoxNumeroWhatsapp.Text = string.Empty;
                return;
            }
            else
            {
                Response.Redirect("perfilUsuario.aspx");
                return;
            }
        }

        protected void botonCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("perfilUsuario.aspx");
        }
                
    }

}