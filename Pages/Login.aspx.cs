using My_Website.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace My_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (IsPostBack)
            {
               User user = Helper1.GetRow(Request.Form["userName"], Request.Form["pass"]);

                if (user.userName != "Visitor")
                {
                    Session["userName"] = user.userName;
                    Session["Login"] = true;
                    Session["Admin"] = user.Admin;
                    message.InnerHtml = "Admin: " + Session["Admin"].ToString();
                    Response.Redirect("main page.aspx");
                }
                else
                {
                    Session["userName"] = user.userName;
                    Session["Login"] = false;
                    Session["Admin"] = false;
                    message.InnerHtml = "Unknown username or password";
                    Session["timesLogin"] = int.Parse(Session["timesLogin"].ToString()) + 1;
                    message.InnerHtml = "You have faild to log in " + Session["timesLogin"].ToString() + " out of 5 tries log in";

                    if (Session["timesLogin"].ToString() == "5")
                    {
                           
                        Response.Redirect("Recover.aspx");  
                    }
                }

            }






            //if (IsPostBack)
            //{
            //    if (userName.Value == Application["aUName1"].ToString() && pass.Value == Application["aPass1"].ToString()
            //        || userName.Value == Application["aUName2"].ToString() && pass.Value == Application["aPass2"].ToString())

            //    {
            //        Session["username"] = userName.Value;
            //        Session["Admin"] =true;
            //        Application["Loggings"] = (int)Application["Loggings"] + 1;
            //        Response.Redirect("main page.aspx");
            //    }
            //    else if (userName.Value == Application["UName1"].ToString() && pass.Value == Application["Pass1"].ToString()
            //      || userName.Value == Application["UName2"].ToString() && pass.Value == Application["Pass2"].ToString()
            //      || userName.Value == Application["UName3"].ToString() && pass.Value == Application["Pass3"].ToString())
            //    {
            //        Session["username"] = userName.Value;
            //        Session["admin"] = false;
            //        Application["Loggings"] = (int)Application["Loggings"] + 1;
            //        Response.Redirect("main page.aspx");
            //    }
            //    else
            //    {
            //        Session["username"] = "visitor";
            //        message.InnerHtml = "Unknown username or password try again";
            //        message.Style.Add("color", "red");
            //    }

            //}

        }
    }
}