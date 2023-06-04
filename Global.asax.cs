using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace My_Website
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            Application["sessions"] = 0;
            Application["aUName1"] = "Ravid";
            Application["aPass1"] = "Ravid12!";
            Application["aUName2"] = "Gilad";
            Application["aPass2"] = "Gilad12!";
            Application["UName1"] = "Yonatan";
            Application["Pass1"] = "Yonatan12!";
            Application["UName2"] = "Itamar";
            Application["Pass2"] = "Itamar12!";
            Application["UName3"] = "Yuval";
            Application["Pass3"] = "Yuval12!";
            Application["Connected"] = 0;
            Application["Loggings"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["username"] = "visitor";
            Session["timesLogin"] = 0;
            Application["sessions"] = (int)Application["sessions"]+1 ;
            Session["Admin"] = false; Session["Admin2"] = false;
            Application["Connected"] = (int)Application["Connected"] + 1;
          


        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["sessions"] = (int)Application["sessions"] - 1;
            Application["Loggings"] = (int)Application["Loggings"] -1 ;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}