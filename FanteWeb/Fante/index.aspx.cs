using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class index : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        string resultado;

        protected void Page_Load(object sender, EventArgs e)
        {
            iniciarSession(); 
        }

        protected void botonIniciarSession_Click(object sender, EventArgs e)
        {
            Response.Redirect("logueoUsuario.aspx");
        }

        protected void ImageCamara_Click(object sender, EventArgs e)
        {
            PanelError.Visible = true;
        }

        public void iniciarSession()
        {
            if (Request.Cookies["Usuario_Recordado"] != null) // cargar las coockies si es que existen y ya arranca logueado
            {

                Session["nickUsuario"] = Request.Cookies["Usuario_Recordado"]["Usuario"]; // cargar la coockie como usuario   
                Session["usuarioPassword"] = Request.Cookies["Usuario_Recordado"]["Password"]; // cargar la coockie como password  

                db.loguearUsuarioPC(Session["nickUsuario"].ToString(), Session["usuarioPassword"].ToString(), ref resultado);

                if (resultado == "0") // porque el usuario cambio el password
                {

                    EliminarCookie(); // borra todo vestijio de cookie
                    Response.Redirect("logueoUsuario.aspx"); // re arranca en el logueo
                    return;

                }

                string[] idPlata = new string[2];
                idPlata = resultado.Split('x');

                Session["id_Usuario"] = idPlata[0];
                Session["plataUsuario"] = idPlata[1];
                Response.Redirect("indexlogueado.aspx");

            }
        }

        public void EliminarCookie()
        {

            HttpCookie VariableCookie = new HttpCookie("Usuario_Recordado");
            VariableCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(VariableCookie);

        }

    }

}