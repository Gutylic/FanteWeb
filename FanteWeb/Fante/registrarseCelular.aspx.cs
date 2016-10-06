using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class registrarseCelular : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        int? codigoSMS;

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
            if (!codigoPais.Text.StartsWith("+") || numeroCelular.Text.Length > 11) 
            {
                etiquetaErroneaNumero.Visible = true;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = false;

                etiquetaEsperando.Visible = false;

                codigoPais.Text = string.Empty;
                numeroCelular.Text = string.Empty;
                return;
            }

            if (claveUsuario.Text != reClaveUsuario.Text)
            {
                etiquetaErroneaNumero.Visible = false;
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
                etiquetaErroneaNumero.Visible = false;
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
                etiquetaErroneaNumero.Visible = false;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = true;

                etiquetaEsperando.Visible = false;

                captchaTextBox.Text = string.Empty;
                return;
            }

            string codigo = codigoPais.Text.Substring(1, codigoPais.Text.Length - 1);

            try
            {

                db.registrarUsuarioCelular(int.Parse(codigo), long.Parse(numeroCelular.Text), claveUsuario.Text, ref codigoSMS);

                if (codigoSMS == -1) 
                {
                    PanelRegistrarse.Visible = false;
                    PanelnoRegistrado.Visible = true;
                    return;
                
                }



                //HttpWebRequest loHttp = (HttpWebRequest)WebRequest.Create("http://www.altiria.net/api/http");
                //string lcPostData = "cmd=sendsms&domainId=gverge&login=licenciados@outlook.com.ar&passwd=gv16er5ge&dest=" + numeroCelular + "&msg=tu password de Fante es: " + contrasenaPassword;
                //byte[] lbPostBuffer = System.Text.Encoding.GetEncoding("utf-8").GetBytes(lcPostData);
                //loHttp.Method = "POST";
                //loHttp.ContentType = "application/x-www-form-urlencoded";
                //loHttp.ContentLength = lbPostBuffer.Length;
                //loHttp.Timeout = 60000;
                //String response = "";

                //Stream loPostData = loHttp.GetRequestStream();
                //loPostData.Write(lbPostBuffer, 0, lbPostBuffer.Length);
                //loPostData.Close();

                //HttpWebResponse loWebResponse = (HttpWebResponse)loHttp.GetResponse();

                //Encoding enc = System.Text.Encoding.GetEncoding("utf-8");
                //StreamReader loResponseStream = new StreamReader(loWebResponse.GetResponseStream(), enc);

                //response = loResponseStream.ReadToEnd();
                //loWebResponse.Close();
                //loResponseStream.Close();

                etiquetaErroneaNumero.Visible = false;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = false;

                etiquetaEsperando.Visible = true;

                ViewState["codigoPais"] = codigo;
                ViewState["numeroCelular"] = numeroCelular.Text;
                Response.Redirect("activacionUsuario.aspx");

            }
            catch
            {
                etiquetaErroneaNumero.Visible = true;
                etiquetaErroneaReClave.Visible = false;
                etiquetaErroneaClave.Visible = false;
                etiquetaErroneaCatcha.Visible = false;

                etiquetaEsperando.Visible = false;

                codigoPais.Text = string.Empty;
                numeroCelular.Text = string.Empty;
            
            }
        }

        protected void botonContraseña_Click(object sender, EventArgs e)
        {
            esperandoEtiqueta.Visible = true;
            Response.Redirect("contrasenaUsuario.aspx");
        }
    }
}