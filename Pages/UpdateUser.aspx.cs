using My_Website.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Website
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                var uId = int.Parse(Session["userToUpdate"].ToString());
                User user = Helper1.GetUser(uId);
                userName.Value = user.userName;
                pass.Value = user.password;
                name.Value = user.firstName;
                lastname.Value = user.lastName;
                email.Value = user.email;
                city.Value = user.city;
                phone.Value = user.phone;
                gender.SelectedIndex = user.gender - 1; //I substract 1 because the html starts from 0
                date.Value = user.birthday.ToString("yyyy-dd-MM");

            }
            

        }
        protected void btn_UpdateUser(object sender, EventArgs e)
        {
            User user = new User();
            user.userId = int.Parse(Session["userToUpdate"].ToString());
            user.userName = userName.Value;
            user.password = pass.Value;
            user.email = email.Value;
            user.firstName = name.Value;
            user.lastName = lastname.Value;
            user.city = city.Value;
            user.phone = phone.Value;
            user.birthday = DateTime.Parse(date.Value);
            user.gender = gender.SelectedIndex + 1;
            
            Helper1.Update(user);
            Response.Redirect("Admin2.aspx");

        }

       





    }
}