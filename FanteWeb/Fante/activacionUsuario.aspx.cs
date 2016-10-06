using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class activacionUsuario : System.Web.UI.Page
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
        int? resultado;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonActivar_Click(object sender, EventArgs e)
        {
            if (activarUsuario.Text == string.Empty)
            {
                return;            
            }
            
            try
            {

               // db.activarUsuarioCelular(int.Parse(ViewState["codigoPais"].ToString()), long.Parse(ViewState["numeroCelular"].ToString()), int.Parse(activarUsuario.Text),ref resultado);
                db.activarUsuarioCelular(54, 91155445544, int.Parse(activarUsuario.Text), ref resultado);
                etiquetaErronea.Visible = false;
                etiquetaEsperando.Visible = true;

                if (resultado == 1)
                {
                    Response.Redirect("logueoUsuario.aspx");
                }
                else
                {
                    etiquetaErronea.Visible = true;
                    etiquetaEsperando.Visible = false;
                    return;
                }

            }
            catch
            {
                etiquetaErronea.Visible = true;
                etiquetaEsperando.Visible = false;
                return;
            
            }
            
                     
        }
    }
}