using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class registrarseEmail : System.Web.UI.Page
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
        int? codigo;

        protected void Page_Load(object sender, EventArgs e)
        {
            generarRegistro(); // cargando el captcha en la pagina de registro
        }

        public class CaptchaRegistro
        {
            // clase creada para la generacion del captcha
            public int imagenCaptcha { get; set; }
            public string valorCaptcha { get; set; }
        }

        public CaptchaRegistro generarRegistro()
        {
            CaptchaRegistro datosCaptcha = new CaptchaRegistro();
            Random r = new Random();
            string[] valorImagen = new string[6] { "2M8I", "H37C", "P56H", "9JH2", "KN9Y", "559P" }; // imagenes del captcha
            datosCaptcha.imagenCaptcha = r.Next(1, 7); // elegir una de las imagenes
            ViewState["imagenCaptcha"] = datosCaptcha.imagenCaptcha;
            datosCaptcha.valorCaptcha = valorImagen[datosCaptcha.imagenCaptcha - 1]; // elegir el contenido del capcha 
            ViewState["valorCaptcha"] = datosCaptcha.valorCaptcha;
            ImagenCaptcha.ImageUrl = "captcha/" + ViewState["imagenCaptcha"].ToString() + ".png"; // cargar la imagen del captcha en la pagina
            return datosCaptcha;
        }

        protected void botonRegistrarme_Click(object sender, EventArgs e)
        {
            if (correoUsuario.Text != reCorreoUsuario.Text) 
            {
                
                etiquetaErroneaReMail.Visible = true;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = false;
                etiquetaErroneaReClave.Visible = false;
                etiquetaEsperando.Visible = false;

                correoUsuario.Text = string.Empty;
                reCorreoUsuario.Text = string.Empty;
                return;
            }

            if (claveUsuario.Text != reClaveUsuario.Text)
            {
                etiquetaErroneaReMail.Visible = false;
                etiquetaErroneaReClave.Visible = true;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = false;

                etiquetaEsperando.Visible = false;

                claveUsuario.Text = string.Empty;
                reClaveUsuario.Text = string.Empty;
                return;
            }

            if (claveUsuario.Text.Length <= 5)
            {
                etiquetaErroneaReMail.Visible = true;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = true;
                etiquetaErroneaCatcha.Visible = false;

                etiquetaEsperando.Visible = false;

                claveUsuario.Text = string.Empty;
                reClaveUsuario.Text = string.Empty;
                return;
            }

            if (captchaTextBox.Text != (string)ViewState["valorCaptcha"])
            {
                etiquetaErroneaReMail.Visible = true;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = true;

                etiquetaEsperando.Visible = false;

                captchaTextBox.Text = string.Empty;
                return;
            }

            db.registrarUsuarioEmailPC(correoUsuario.Text, claveUsuario.Text, ref codigo);

            if (codigo == -1)
            {
                PanelRegistrarse.Visible = false;
                PanelnoRegistrado.Visible = true;
                return;
            }

            etiquetaEsperando.Visible = true;
            Response.Redirect("logueoUsuario.aspx");
        }

        protected void botonContraseña_Click(object sender, EventArgs e)
        {
            esperandoEtiqueta.Visible = true;
            Response.Redirect("contrasenaUsuario.aspx");
        }
    }
}