using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class modificarCorreo : System.Web.UI.Page
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
        int? resultado;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

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


                if (Datos[0].correoElectronico == null)
                {
                    textBoxCorreo.Text = string.Empty;
                }
                else 
                { 
                    textBoxCorreo.Text = (Datos[0].correoElectronico).ToString();
                }
                                
            }

        }


        protected void botonModificar_Click(object sender, EventArgs e)
        {
            etiquetaEsperando.Visible = true;

            if (textBoxCorreo.Text == null)
            {
                db.actualizarPerfilCorreoPC(int.Parse(Session["id_Usuario"].ToString()), null, ref resultado);
                Response.Redirect("perfilUsuario.aspx");
                return;
            }
            
            db.actualizarPerfilCorreoPC(int.Parse(Session["id_Usuario"].ToString()),textBoxCorreo.Text, ref resultado);

            if (resultado == -1 || resultado == -6)
            {
                etiquetaErronea.Visible = true;              
                etiquetaEsperando.Visible = false;
                textBoxCorreo.Text = string.Empty;
                
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