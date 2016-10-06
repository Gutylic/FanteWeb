using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;

namespace Fante
{
    public partial class logueoUsuario : System.Web.UI.Page
    {
        string usuarioLogueado;
        string respuestas;
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

            FaceBookConnect.API_Key = "624291294396433";
            FaceBookConnect.API_Secret = "15278e274bb67fa82d932b1562a22d53";

            if (!IsPostBack)
            {
                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Usuario con acceso denegado')", true);
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string data = FaceBookConnect.Fetch(code, "me");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);

                    db.registrarUsuarioFacebookPC(long.Parse(faceBookUser.Id.ToString()), faceBookUser.Name.ToString(), ref respuestas);
                    
                    string[] idPlata = new string[2];
                    idPlata = respuestas.Split('x');
                    
                    Session["id_Usuario"] = idPlata[0];
                    Session["plataUsuario"] = idPlata[1];
                    //Session["contrasenaUsuario"] = no se si vuelvo a trabajar con la contraseña cuando me logueo de facebook
                    Session["nickUsuario"] = faceBookUser.Name.ToString();

                    Response.Redirect("indexlogueado.aspx");

                }
            }

        }
        
        protected void iniciarSessionBoton_Click(object sender, EventArgs e)
        {
            if (usuarioTextBox.Text == string.Empty)
            {
                return;
            }

            etiquetaEsperando.Visible = true;
            usuarioLogueado = usuarioTextBox.Text;
                        
            if (usuarioTextBox.Text.Substring(0, 1) == "+") { 
                usuarioLogueado = usuarioTextBox.Text.Replace('+',' ');
            }

            usuarioLogueado = usuarioLogueado.TrimStart();

            db.loguearUsuarioPC(usuarioLogueado, claveTextBox.Text,ref respuestas);

            if (respuestas == "0") {

                usuarioTextBox.Text = string.Empty;
                etiquetaEsperando.Visible = false;
                etiquetaErronea.Visible = true;
                return;
            }
            
            string[] idPlata = new string[2];
            idPlata = respuestas.Split('x');

            Session["id_Usuario"] = idPlata[0];
            Session["plataUsuario"] = idPlata[1];
            Session["contrasenaUsuario"] = claveTextBox.Text;
            Session["nickUsuario"] = usuarioLogueado;

            usuarioTextBox.Text = string.Empty;
            claveTextBox.Text = string.Empty;

            if (mantenermeConectado.Checked)
            {
                GuardarCookie((string)Session["nickUsuario"], (string)Session["contrasenaUsuario"], Convert.ToInt32(Session["id_Usuario"]));

            }
            else
            {
                EliminarCookie();
            }
            
            etiquetaEsperando.Visible = false;
            Response.Redirect("indexlogueado.aspx");
           
        }

        public void GuardarCookie(string Usuario, string Password, int id_Usuario)
        {

            HttpCookie VariableCookie = new HttpCookie("Usuario_Recordado");
            VariableCookie.Values.Add("Usuario", Usuario);
            VariableCookie.Values.Add("Password", Password);
            VariableCookie.Values.Add("id_Usuario", id_Usuario.ToString());
            VariableCookie.Expires = DateTime.Now.AddDays(90);
            Response.Cookies.Add(VariableCookie);

        }

        public void EliminarCookie()
        {
            HttpCookie VariableCookie = new HttpCookie("Usuario_Recordado");
            VariableCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(VariableCookie);
        }

        [WebMethod()]
        public static void AbandonarSesion()
        {
            HttpContext.Current.Session.Remove("id_Usuario");
            HttpContext.Current.Session.Remove("Usuario");
            HttpContext.Current.Session.Remove("Password");
        }

        protected void botonFacebook_Click(object sender, EventArgs e)
        {
           // FaceBookConnect.Authorize("public_profile", Request.Url.AbsoluteUri.Split('?')[0]);
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }

        public class FaceBookUser
        {
            public string Id { get; set; }
            public string Name { get; set; }          

        }
    }
}