using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class seleccionarRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                etiquetaEsperando.Visible = false;                
            }
        }

        protected void botonWhatsapp_Click(object sender, ImageClickEventArgs e)
        {
            etiquetaEsperando.Visible = true;
            Response.Redirect("registrarseCelular.aspx");
        }

        protected void botonEmail_Click(object sender, ImageClickEventArgs e)
        {
            etiquetaEsperando.Visible = true;
            Response.Redirect("registrarseEmail.aspx");
        }
    }
}