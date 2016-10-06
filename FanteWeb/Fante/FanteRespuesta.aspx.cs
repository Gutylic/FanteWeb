﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fante
{
    public partial class FanteRespuesta : System.Web.UI.Page
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

            ImageResultado.ImageUrl = "http://www.colegioeba.com/respuesta/" + Request.QueryString["res"] + ".png";
        }
    }
}