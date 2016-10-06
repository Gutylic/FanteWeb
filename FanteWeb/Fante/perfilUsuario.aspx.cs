using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class perfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["id_Usuario"] == null)
                {
                    Response.Redirect("index.aspx");
                }

            }

            string correoElectronico;
            string codigoPais;
            string numeroCelular;

                DataClasses1DataContext db = new DataClasses1DataContext();

                try
                {

                    long convertirNumero = long.Parse(Session["nickUsuario"].ToString());

                    nombrePerfil.Text = "Perfil del Usuario para modificar: + " + convertirNumero;

                }
                catch
                {
                    nombrePerfil.Text = "Perfil del Usuario para modificar: " + Session["nickUsuario"].ToString();
                }

                List<mostrarPerfilUsuarioPCResult> Datos;
                   
                Datos = db.mostrarPerfilUsuarioPC(int.Parse(Session["id_Usuario"].ToString())).ToList();
                
                if (Datos[0].correoElectronico == null)
                {
                    correoElectronico = string.Empty;
                }
                if (Datos[0].numeroCelular == null)
                {
                    numeroCelular = string.Empty;
                }
                if (Datos[0].codigoPais == null)
                {
                    codigoPais = string.Empty;
                }

                etiquetaCorreo.Text = Datos[0].correoElectronico;

                etiquetaContrasena.Text = Datos[0].contrasenaUsuario;

                if (Datos[0].codigoPais == null)
                {

                    etiquetaWhatsapp.Text = string.Empty;

                }
                else
                {
                    etiquetaWhatsapp.Text = "+ " + Datos[0].codigoPais + " " + Datos[0].numeroCelular;

                }


                ViewState["correoElectronico"] = Datos[0].correoElectronico;

                ViewState["codigoPais"] = Datos[0].codigoPais;

                ViewState["numeroWhatsapp"] = Datos[0].numeroCelular;
           
            
        }

        protected void guardaryVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("indexlogueado.aspx");
        }

    }
}