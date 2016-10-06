using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class indexlogueado : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        int? valor;
     

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                long convertirNumero = long.Parse(Session["nickUsuario"].ToString());

                etiquetaUsuario.Text = "+" + convertirNumero;
            }
            catch 
            { 

                string[] recortarUsuario = Session["nickUsuario"].ToString().Split('@');

                etiquetaUsuario.Text = recortarUsuario[0];
            
            }

            
            etiquetaSaldo.Text = "$: " + Session["plataUsuario"].ToString();

        }

        protected void botonMiCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("perfilUsuario.aspx");
        }

        protected void botonCerrarSession_Click(object sender, EventArgs e)
        {

            EliminarCookie();
            Response.Redirect("index.aspx");

        }

        public void ImagenAmigo_Click(object sender, EventArgs e) 
        {
            Session["num1"] = null;
            Session["cod1"] = null;
            Session["num2"] = null;
            Session["cod2"] = null;
            Session["num3"] = null;
            Session["cod3"] = null;
            Response.Redirect("creditoGratis.aspx?cod1=&num1=&cod2=&num2=&cod3=&num3=");        
        }

        public void ImagenCarga_Click(object sender, EventArgs e)
        {            
            Response.Redirect("cargaCredito.aspx");
        }

        public void ImagenEjercicios_Click(object sender, EventArgs e)
        {
            Response.Redirect("respuestaEjercicios.aspx");
        }

        public void ImagenVideos_Click(object sender, EventArgs e)
        {
            Response.Redirect("respuestaVideos.aspx");
        }

        public void EliminarCookie()
        {
            HttpCookie VariableCookie = new HttpCookie("Usuario_Recordado");
            VariableCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(VariableCookie);
        }



        protected void ResolverEjercicio_Click(object sender, EventArgs e)
        {
            db.modificarNombre(ref valor);

            if (SubirAdjunto.HasFiles)
            {

                if (SubirAdjunto.PostedFile.ContentLength > 102400)
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERRORSUP();", true);
                    return;
                }

                SubirAdjunto.PostedFile.SaveAs("C:\\archivo/" + (string)Session["id_Usuario"] + "╝" + "_adj." + SubirAdjunto.PostedFile.FileName.Split('.')[1]);
                
                string archivoAdjunto = (string)Session["id_Usuario"] + "╝" + "_adj." + SubirAdjunto.PostedFile.FileName.Split('.')[1];

                db.insertarEjercicioEnviado(archivoAdjunto, true, false, int.Parse(Session["id_Usuario"].ToString()), ref valor);

                if (valor == 1)
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelOK();", true);
                    return;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERROR();", true);
                    return;
                }
                        
            }
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERROR();", true);
            return;


        }

        protected void ResolverVideo_Click(object sender, EventArgs e)
        {
            db.modificarNombre(ref valor);

            if (SubirAdjunto.HasFiles)
            {

                if (SubirAdjunto.PostedFile.ContentLength > 102400)
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERRORSUP();", true);
                    return;
                }


                SubirAdjunto.PostedFile.SaveAs("C:\\archivo/" + (string)Session["id_Usuario"] + "╝" + "_adj." + SubirAdjunto.PostedFile.FileName.Split('.')[1]);

                string archivoAdjunto = (string)Session["id_Usuario"] + "╝" + "_adj." + SubirAdjunto.PostedFile.FileName.Split('.')[1];

                db.insertarEjercicioEnviado(archivoAdjunto, false, false, int.Parse(Session["id_Usuario"].ToString()), ref valor);

                if (valor == 1)
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelOK();", true);
                    return;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERROR();", true);
                    return;
                }

            }
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "onLoad", "MostrarLabelERROR();", true);
            return;


        }

    }
}