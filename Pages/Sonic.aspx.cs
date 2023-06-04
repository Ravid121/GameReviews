using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website.Pages
{
    public partial class Sonic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == "visitor")
            {
                Response.Redirect("main page.aspx");
            }
        }
    }
}