using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace My_Website.App_Code
{
    public class User
    { //
        public int userId;
        public string userName;
        public string password;
        public string firstName;
        public string lastName;
        public DateTime birthday;
        public string city;
        public string phone;
        public bool Admin;
        public string email;
        public int gender;
        public string passanswer1;
        public string passq1;
        public string passq2;
        public string passanswer2;

        public User()
        {
            userId = -1;
            userName = "";
            password = "";
            firstName = "";
            lastName = "";
            birthday = DateTime.Today;
            city = "";
            phone = "";
            email = "";
            gender = 0;
            Admin = false;
            

        }

       
    }
}