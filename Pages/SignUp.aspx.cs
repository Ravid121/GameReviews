using My_Website.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string SQL = $"SELECT COUNT (admin) FROM tblUsers " + $"WHERE UserName ='{Request.Form["UserName"]}'";
                int count = (int)Helper1.GetScalar(SQL);
                if (count > 0)
                {
                    userNameAlert.InnerHtml = "User Name is taken";
                }
                else
                {
                    SQL = $"INSERT INTO tblUsers (UserName,PassWord,FirstName, LastName, Email,City,Phone,BirthDay,Admin,SQ1,SQA1,SQ2,SQA2,Gender) " +
                        $"VALUES ('{Request.Form["userName"]}','{Request.Form["pass"]}','{Request.Form["name"]}','{Request.Form["lastname"]}','{Request.Form["email"]}','{Request.Form["city"]}','{Request.Form["phone"]}','{Request.Form["date"]}','0','{Request.Form["Password Recovery Questions1"]}','{Request.Form["passanswermsg1"]}','{Request.Form["Password Recovery Questions2"]}','{Request.Form["passanswermsg2"]}','{GenderToInt(Request.Form["gender"])}');";
                    Helper1.ExecuteNonQuery(SQL);
                    Response.Redirect("main page.aspx");


                }



            }



        }
        private string GenderToInt(string gender)
        {
            string val = "";
            switch (gender)
            {
                case "Male":
                    val = "1";
                    break;
                case "female":
                    val = "2";
                    break;
                case "other":
                    val = "3";
                    break;

            }
            return val;
        }


        //    if (IsPostBack)
        //    {
        //        User user = new User();
        //        user.userName = Request.Form["userName"];
        //        user.password = Request.Form["pass"];
        //        user.email = Request.Form["email"];
        //        user.firstName = Request.Form["name"];
        //        user.lastName = Request.Form["lastname"];
        //        user.city = Request.Form["city"];
        //        user.phone = Request.Form["phone"];
        //        user.birthday = DateTime.Parse(Request.Form["date"]);
        //        user.gender = GenderToInt(Request.Form["gender"]);
        //        user.passanswer1 = Request.Form["passanswer1"];
        //        user.passq1 = Request.Form["Password Recovery Questions1"];
        //        user.passq2 = Request.Form["Password Recovery Questions2"];
        //        user.passanswer2 = Request.Form["passanswer2"];
        //        Helper1.Insert(user);
        //        Response.Redirect("main page.aspx");
        //    }




    }

}