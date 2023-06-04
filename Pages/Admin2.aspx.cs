using My_Website.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace My_Website
{
    public partial class Admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["Admin"])
            {
                Response.Redirect("main page.aspx");
            }

            if (!IsPostBack)
            {
                string sqlstr = "select * from tblUsers";

                DataSet ds = Helper1.RetrieveTable(sqlstr);
                DataTable dt = ds.Tables[0];
                string table = Helper1.BuildSimpleUsersTable(dt);
                tableDiv.InnerHtml = table;
            }
        }
        protected void btnEdit_ServerClick(object sender,EventArgs e)
        {
            for (int i = 0; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    Session["userToUpdate"]=(Request.Form.AllKeys[i].Remove(0, 3));
                    Response.Redirect("UpdateUser.aspx");
                }
               
            }
            message.InnerText = "No user was Selected";


        }
        protected void btnDelete_ServerClick(object sender, EventArgs e)
        {
            string[] userToDelete;
            string users = "";
            for (int i = 0; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    users +=  (Request.Form.AllKeys[i].Remove(0, 3)) + ",";

                }
            }
            userToDelete = users.Split(',');
            Helper1.Delete(userToDelete);
            string sqlstr = "select * from tblUsers";

            DataSet ds = Helper1.RetrieveTable(sqlstr);
            DataTable dt = ds.Tables[0];
            string table = Helper1.BuildSimpleUsersTable(dt);
            tableDiv.InnerHtml = table;

        }
        protected void btnFilter_ServerClick(object sender, EventArgs e)
        {
            string SQLStr = Helper1.BuildSQLStr(Request.Form["filter"]);
            DataSet ds = Helper1.RetrieveTable(SQLStr);
            string table = Helper1.BuildUsersTable(ds.Tables[0]);
            tableDiv.InnerHtml = table;


        }
        protected void btnSort_ServerClick(object sender, EventArgs e)
        {
            //build sql query 
            string SQLStr = Helper1.BuildSQLStr(Request.Form["filter"]);
            //get the data from sql
            DataSet ds = Helper1.RetrieveTable(SQLStr);
            //get table
            DataTable dt = ds.Tables[0];


            dt = Helper1.SortTable(dt, sortTable.Value, dir.Value);
            string table = Helper1.BuildUsersTable(dt);
            tableDiv.InnerHtml = table;

        }


    }
}