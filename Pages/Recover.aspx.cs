using My_Website.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website
{
    public partial class Recover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string SQL = $"SELECT COUNT (admin)  FROM tblUsers"  + $" WHERE UserName ='{Request.Form["userName"]}'";
                int count = (int)Helper1.GetScalar(SQL);
                if (count == 0)
                {
                   message.InnerHtml = "User name is not exist";
                    return;
                }
                else
                {
                    var user = Helper1.GetRow(Request.Form["userName"]);
                    if (user.passanswer1 == Request.Form["passanswer1"] && user.passanswer2 == Request.Form["passanswer2"])
                    {
                        passwordmessage.InnerHtml = "Your password is " + user.password;

                    }
                    else
                    {
                        passwordmessage.InnerHtml = "Your answers not correct!!!";
                    }


                }


            }


        }
    }
}