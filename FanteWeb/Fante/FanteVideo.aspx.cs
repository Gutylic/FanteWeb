using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Fante
{
    public partial class FanteVideo : System.Web.UI.Page
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

            ((HtmlControl)(form1.FindControl("video"))).Attributes["src"] = "https://www.youtube.com/embed/" + Request.QueryString["res"];
            ((HtmlControl)(form1.FindControl("videoXS"))).Attributes["src"] = "https://www.youtube.com/embed/" + Request.QueryString["res"];
        }

    }

}