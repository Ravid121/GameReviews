using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace My_Website.App_Code
{
    public static class Helper1
    {
        public const string DBName = "Database1.mdf";
        public const string tblName = "tblUsers";
        public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                        + DBName + ";Integrated Security=True";
        public static DataSet RetrieveTable(string SQLStr)
        {  // בונה את הטבלה ועושה כל מה שקשור אליה
            SqlConnection con = new SqlConnection(conString);

            SqlCommand cmd = new SqlCommand(SQLStr, con);

            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            ad.Fill(ds, tblName);

            return ds;
        }

        public static object GetScalar(string SQL)
        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            object scalar = cmd.ExecuteScalar();
            con.Close();

            return scalar;
        }

        public static int ExecuteNonQuery(string SQL)
        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();

            // return the number of rows affected
            return n;
        }
        public static void Delete(string[] userIdToDelete)
        // The Array "userIdToDelete" contain the id of the users to delete. 
        // Delets all the users in the array "userIdToDelete".
        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // טעינת הנתונים
            string SQL = "SELECT * FROM " + tblName;
            SqlCommand cmd = new SqlCommand(SQL, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, tblName);

            // מחיקת שורות שנבחרו מתוך הדאטה סט
            for (int i = 0; i < userIdToDelete.Length-1 ; i++)
            {
                {
                    DataRow[] dr = ds.Tables[tblName].Select($"UserID = {userIdToDelete[i]}");
                    dr[0].Delete();
                }
            }

            // עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetDeleteCommand();
            adapter.Update(ds, tblName);
        }

        public static void Update(User user)
        // The Method recieve a user objects. Find the user in the DataBase acording to his userId and update all the other properties in DB.
        {
            // HttpRequest Request
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            string SQLStr = "SELECT * FROM " + Helper1.tblName + $" Where userid={user.userId}";
            SqlCommand cmd = new SqlCommand(SQLStr, con);

            //  טעינת הנתונים לתוך DataSet
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, tblName);

            // בניית השורה להוספה
            DataRow dr = ds.Tables[tblName].Rows[0];
            dr["FirstName"] = user.firstName;
            dr["LastName"] = user.lastName;
            dr["UserName"] = user.userName;
            dr["Password"] = user.password;
            dr["Birthday"] = user.birthday;
            dr["City"] = user.city;
            dr["Email"] = user.email;
            dr["Phone"] = user.phone;
            dr["Gender"] = user.gender;

            // עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetUpdateCommand();
            adapter.Update(ds, tblName);

        }
        public static User GetUser(int Userid)
        {

            // HttpRequest Request
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            string SQLStr = "SELECT * FROM " + Helper1.tblName + $" Where userid={Userid}";
            SqlCommand cmd = new SqlCommand(SQLStr, con);

            //  טעינת הנתונים לתוך DataSet
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, tblName);
            DataRow dr = ds.Tables[tblName].Rows[0];

            var u = new User();
            u.userName = dr["UserName"].ToString();
            u.firstName = dr["FirstName"].ToString();
            u.lastName = dr["LastName"].ToString();
            u.password = dr["Password"].ToString();
            u.birthday = DateTime.Parse(dr["Birthday"].ToString());
            u.city = dr["City"].ToString();
            u.phone = dr["Phone"].ToString();
            u.email = dr["Email"].ToString();
            u.gender = int.Parse(dr["Gender"].ToString());


            return u;

        }

        public static void Insert(User user)
        // The Method recieve a user objects and insert it to the Database as new row. 
        // The Method does't check if the user is already taken.
        {
            //HttpRequest Request
            // התחברות למסד הנתונים
            //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gilad\source\repos\DBWeb\DBWeb\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            string SQLStr = $"SELECT * FROM " + tblName + " WHERE 0=1";
            SqlCommand cmd = new SqlCommand(SQLStr, con);

            // בניית DataSet
            DataSet ds = new DataSet();

            // טעינת סכימת הנתונים
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, tblName);

            // בניית השורה להוספה
            DataRow dr = ds.Tables[tblName].NewRow();
            dr["FirstName"] = user.firstName;
            dr["LastName"] = user.lastName;
            dr["UserName"] = user.userName;
            dr["Password"] = user.password;
            dr["Birthday"] = user.birthday;
            dr["City"] = user.city;
            dr["Email"] = user.email;
            dr["Phone"] = user.phone;
            dr["Admin"] = user.Admin;
            dr["SQ1"] = user.passq1;
            dr["SQA1"] = user.passanswer1;
            dr["SQ2"] = user.passq2;
            dr["SQA2"] = user.passanswer2;
            dr["Gender"] = user.gender;

            ds.Tables[tblName].Rows.Add(dr);

            // עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetInsertCommand();
            adapter.Update(ds, tblName);
        }
        public static User GetRow(string userName)
        // The Method check if there is a user with userName and Password. 
        // If true the Method return a user with the first Name and Admin property.
        // If not the Method return a user wuth first name "Visitor" and Admin = false

        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            string SQL = $"SELECT  SQA1, SQA2 , PassWord FROM " + tblName +
                    $" WHERE UserName='{userName}'";
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            // שימוש בנתונים שהתקבלו
            User user = new User();
            if (reader.HasRows)
            {
                reader.Read();
                user.passanswer1 = reader.GetString(0);
                user.passanswer2 = reader.GetString(1);
                user.password = reader.GetString(2);
            }
           
            reader.Close();
            con.Close();
            return user;
        }

        public static User GetRow(string userName, string password)
        // The Method check if there is a user with userName and Password. 
        // If true the Method return a user with the first Name and Admin property.
        // If not the Method return a user wuth first name "Visitor" and Admin = false

        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            string SQL = $"SELECT FirstName, Admin FROM " + tblName +
                    $" WHERE UserName='{userName}' AND Password = '{password}'";
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            // שימוש בנתונים שהתקבלו
            User user = new User();
            if (reader.HasRows)
            {
                reader.Read();
                user.userName = reader.GetString(0);
                user.Admin = reader.GetBoolean(1);
            }
            else
            {
                user.userName = "Visitor";
                user.Admin = false;
            }
            reader.Close();
            con.Close();
            return user;
        }

        public static string BuildSimpleUsersTable(DataTable dt)
        // the Method Build HTML user Table using the users in the DataTable dt.
        {
            string str = "<table class='usersTable' align='center'>";
            str += "<tr>";
            str += "<td></td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + column.ColumnName + "</td>";
            }

            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                str += "<td>" + CreateRadioBtn(row["UserId"].ToString()) + "</td>";
                foreach (DataColumn column in dt.Columns)
                {
                    string columnName = column.ColumnName;
                    if (columnName == "Admin")
                    {
                        str += "<td>" + (((bool)row[column]) ? "Admin" : "User") + "</td>";
                    }
                    else if(columnName == "Gender")
                    {
                        switch ((int)row[column])
                        {
                            case 1:
                                str += "<td>Male</td>";
                                break;
                            case 2:
                                str += "<td>Female</td>";
                                break;
                            case 3:
                                str += "<td>Other</td>";
                                break;

                        }
                    }
                    else
                    {
                        str += "<td>" + row[column] + "</td>";
                    }
                }
                str += "</tr>";
            }
            str += "</tr>";
            str += "</Table>";
            return str;
        }

      


        public static string BuildUsersTable(DataTable dt)
        // the Method Build HTML user Table with checkBoxes using the users in the DataTable dt.
        {

            string str = "<table class='usersTable' align='center'>";
            str += "<tr>";
            str += "<td> </td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + column.ColumnName + "</td>";
            }

            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                str += "<td>" + CreateRadioBtn(row["UserID"].ToString()) + "</td>";
                foreach (DataColumn column in dt.Columns)
                {
                    str += "<td>" + row[column] + "</td>";
                }
                str += "</tr>";
            }
            str += "</tr>";
            str += "</Table>";
            return str;
        }

        public static string CreateRadioBtn(string id)
        {
            return $"<input type='checkbox' name='chk{id}' id='chk{id}' runat='server' />";
        }

        public static DataTable SortTable(DataTable dt, string column, string dir)
        {
            dt.DefaultView.Sort = column + " " + dir;
            return dt.DefaultView.ToTable();
        }

        public static DataTable FilterTable(DataTable dt, string column, string criteria)
        {
            dt.DefaultView.RowFilter = column + "=" + criteria;
            return dt.DefaultView.ToTable();
        }

        public static string BuildSQLStr (string str)
        {
            if (str == "" || str == null)
            {
                return "SELECT * FROM tblUsers";
            }
            string SQLStr = $"SELECT * FROM tblUsers " +
                $"WHERE firstName LIKE '%{str}%' OR lastName LIKE '%{str}%' ";
            return SQLStr;  
        }


    }


}