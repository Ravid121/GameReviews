using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website.Pages
{
    public partial class main_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"].ToString() == "visitor")
            {
                Info.Style.Add("display", "none");
                Rev.Style.Add("display", "none");
                About.Style.Add("display", "none");
                logout.Style.Add("display", "none");
            }
            else
            {
                Info.Style.Add("display", "block");
                Rev.Style.Add("display", "block");
                About.Style.Add("display", "block");
                logout.Style.Add("display", "block");
            }

            if (Session["username"].ToString() != "Ravid" || Session["username"].ToString() != "Gilad")
            {
                admin.Style.Add("display", "none");
            }
            else
            {
                admin.Style.Add("display", "block");
            }




        }
    }
}