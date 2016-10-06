using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace Fante
{
    public partial class contrasenaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string usuarioLogueado;
        DataClasses1DataContext db = new DataClasses1DataContext();
        string passwordUsuario;

        protected void botonRecuperar_Click(object sender, EventArgs e)
        {           
            if (nickUsuario.Text == string.Empty)
            {
                return;
            }
         
            etiquetaEsperando.Visible = true;
            usuarioLogueado = nickUsuario.Text;
                        
            if (nickUsuario.Text.Substring(0, 1) == "+")
            {
                usuarioLogueado = nickUsuario.Text.Replace('+', ' ');
            }

            usuarioLogueado = usuarioLogueado.TrimStart();

            db.recuperarContrasenaPC(usuarioLogueado,ref passwordUsuario);
            
            if (passwordUsuario == "-1")
            {
                etiquetaEsperando.Visible = false;
                etiquetaErronea.Visible = true;
                return;
            }

            panelInicial.Visible = false;
            panelFinal.Visible = true;

            if(passwordUsuario.Substring(passwordUsuario.Length-1,1) == "1")
            {                
                envioContrasenaMail(usuarioLogueado,passwordUsuario.Substring(0,passwordUsuario.Length-1));
            }
            else
            {
                envioContrasenaCelular(usuarioLogueado,passwordUsuario.Substring(0, passwordUsuario.Length - 1));
            }
    
            return;
            
        }

        public void envioContrasenaMail(string correoElectronico, string contrasenaPassword) 
        {
            //MailMessage Email = new MailMessage();
            //Email.From = new MailAddress("Correodelosprofesores@gmail.com");
            //Email.To.Add(correoElectronico);
            //Email.Subject = "Recuperación de la contraseña de Fante";
            //string Body = HttpContent("http://www.unprofesorya.com/Correo_Activacion.aspx"); // recordar que debo cambiarla o considerar una pagina nueva
            //string Body1 = Body.Replace("NICKUSUARIO", correoElectronico);
            //string Body2 = Body1.Replace("CONTRASENA", contrasenaPassword);
            //Email.IsBodyHtml = true;
            //SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            //smtp.Port = 587;
            //smtp.Credentials = new NetworkCredential("Correodelosprofesores@gmail.com", "qsoiqzuliwweyeog"); // otro cambio si modifico el correo
            //smtp.EnableSsl = true;
            //smtp.Send(Email);                                          
            
        }

        public string HttpContent(string URL) // cargar toda la pagina web para enviar por mail
        {
            WebRequest objRequest = HttpWebRequest.Create(URL);
            StreamReader reader = new StreamReader(objRequest.GetResponse().GetResponseStream());
            string Result = reader.ReadToEnd();
            return Result;
        }


        public void envioContrasenaCelular(string numeroCelular, string contrasenaPassword) 
        {
            
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

        }

        protected void botontaceptar_Click(object sender, EventArgs e)
        {
            Response.Redirect("logueoUsuario.aspx");
        }
    }
}