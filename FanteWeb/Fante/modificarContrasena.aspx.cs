using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class modificarContrasena : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        int? resultado;

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

                List<mostrarPerfilUsuarioPCResult> Datos;

                Datos = db.mostrarPerfilUsuarioPC(int.Parse(Session["id_Usuario"].ToString())).ToList();

                textBoxContrasena.Text = (Datos[0].contrasenaUsuario).ToString();

                

            }
        }


        protected void botonModificar_Click(object sender, EventArgs e)
        {
            etiquetaEsperando.Visible = true;

            if (textBoxContrasena.Text.Length <= 5 || textBoxContrasena.Text.Length > 10)
            {
                etiquetaErronea.Visible = true;
                etiquetaEsperando.Visible = false;
                textBoxContrasena.Text = string.Empty;
                return;
            }

            db.actualizarPerfilContrasenaPC(int.Parse(Session["id_Usuario"].ToString()),textBoxContrasena.Text, ref resultado);
            Response.Redirect("perfilUsuario.aspx");
            return;
            
        }

        protected void botonCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("perfilUsuario.aspx");
        }

       



    }
}