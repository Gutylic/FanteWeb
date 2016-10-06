using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class respuestaEjercicios : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        string respuesta;
        int? resultado;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["id_Usuario"] == null)
                {
                    Response.Redirect("index.aspx");
                }

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

            db.loguearUsuarioPC(Session["nickUsuario"].ToString(), Session["usuarioPassword"].ToString(), ref respuesta);

            string[] idPlata = new string[2];
            idPlata = respuesta.Split('x');

            Session["plataUsuario"] = idPlata[1];


            etiquetaSaldo.Text = "Saldo: $" + Session["plataUsuario"].ToString();

            if (!Page.IsPostBack) // se carga la primera vez al abrir la pagina
            {
                MostrarGridView(int.Parse(Session["id_Usuario"].ToString()), 0); //insertar el usuario
                PaginadoGridView(int.Parse(Session["id_Usuario"].ToString())); // insertar el usuario

            }

        }

        public List<mostrarRespuestasEjerciciosResult> datosCompras(int id_Usuario)
        {
            return db.mostrarRespuestasEjercicios(id_Usuario).ToList();
        }

        public int? datosPaginado(int id_Usuario)
        {
            db.contarRespuestasEjercicios(id_Usuario, ref resultado);
            return resultado;
        }


        public void MostrarGridView(int id_Usuario, int pagina)
        {
            GridView_Ejercicios.DataSource = datosCompras(id_Usuario).Skip(pagina * 7).Take(7);;
            GridView_Ejercicios.DataBind();
        }

        public void PaginadoGridView(int id_Usuario) // pregunta en que momento tomo las condiciones del paginado si cuando arranca la pagina o cuando presiono el boton de buscar
        {
            ViewState["Pagina"] = 0; // posiciono por las dudas la pagina en cero siempre
            Centro.Visible = false; // contiene siguiente y anterior de las paginaciones centrales
            Siguiente_Primero.Visible = true; // siguiente de la primera pagina
            Anterior_Ultimo.Visible = false; // anterior de la ultima pagina      
     
            ViewState["Cantidad_De_Datos"] = datosPaginado(id_Usuario); // cuenta la cantidad de datos
            
            ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Datos"] / 7; // cantidad de paginas segun la cantidad de datos            
            ViewState["Resto"] = (int)ViewState["Cantidad_De_Datos"] % 7; // me dice cuantos datos faltan para completar una pagina completa
            if ((int)ViewState["Resto"] == 0) // sin resto hay una cantidad de paginas completas y le debo restar uno para asegurarme que como inicio de cero la ultima pagina no se encuentre vacia
            {
                ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Paginas"] - 1;
            }
            if ((int)ViewState["Cantidad_De_Datos"] <= 7) // para saber si hay menos de 20 datos no aparezca el boton de siguiente
            {
                Siguiente_Primero.Visible = false;
            }
        }

        protected void Siguiente_Click(object sender, EventArgs e)
        {
            ViewState["Pagina"] = (int)ViewState["Pagina"] + 1;// sumo una pagina            
            if ((int)ViewState["Pagina"] == (int)ViewState["Cantidad_De_Paginas"]) // mira si la pagina en la que estoy es igual a la pagina final (estoy en la ultima pagina)
            {
                MostrarGridView(int.Parse(Session["id_Usuario"].ToString()), (int)ViewState["Pagina"]);// carga cada presion el gridview
                Centro.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Extremo.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo (contiene anterior ultimo y siguiente primero)
                Siguiente_Primero.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Anterior_Ultimo.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
            }
            else // sin no estoy en la ultima pagina
            {
                MostrarGridView(int.Parse(Session["id_Usuario"].ToString()), (int)ViewState["Pagina"]);// carga cada presion el gridview
                Centro.Visible = true; // estoy en las paginas del centro
                Extremo.Visible = false; // no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }

        protected void Anterior_Click(object sender, EventArgs e)
        {
            ViewState["Pagina"] = (int)ViewState["Pagina"] - 1; // resto una pagina
            if ((int)ViewState["Pagina"] == 0) // mira si esta en la primera pagina
            {
                MostrarGridView(int.Parse(Session["id_Usuario"].ToString()), (int)ViewState["Pagina"]); // carga cada presion el gridview
                Centro.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero 
                Extremo.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero (contiene anterior ultimo y siguiente primero)
                Siguiente_Primero.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero
                Anterior_Ultimo.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero
            }
            else// sin no estoy en la primera pagina
            {
                MostrarGridView(int.Parse(Session["id_Usuario"].ToString()), (int)ViewState["Pagina"]); // carga cada presion el gridview
                Centro.Visible = true; // estoy en las paginas del centro
                Extremo.Visible = false;// no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }

        protected void Identificador_Ejercicios(object sender, EventArgs e) // convierto al datalist en editable 
        {
            GridViewRow row = GridView_Ejercicios.SelectedRow; // defiene la variable row del tipo gridview
            var ubicacionRespuesta = GridView_Ejercicios.DataKeys[row.RowIndex].Value; // captura el identificador del Administrador seleccionado           

            string respuestaEjercicio = (db.ubicarRespuestasEjercicios(Convert.ToInt32(ubicacionRespuesta)).ToList())[0].ubicacionRespuestaEjercicio;

            Response.Redirect("FanteRespuesta.aspx?res=" + respuestaEjercicio);
           
            return;
       
        }


      

    }
}