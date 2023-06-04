using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website.Pages
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"].ToString() == "Visitor")
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
            if ((bool)Session["Admin"])
            {
                admin.Style.Add("display", "block");
                admin2.Style.Add("display", "block");
            }
            else
            {
                admin.Style.Add("display", "none");
                admin2.Style.Add("display", "none");
            }





        }
    }
}