using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


    public partial class update_cloud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.IsAuthenticated)
            {
                Response.Write("Requested by: " + User.Identity.Name + "</br>");
            }
            else
            {
                Response.Redirect("Unauthorized.aspx");
            } 

            Session["EmpID"] = Request.QueryString["cid"];
            string fn = null;
            string ln = null;
            string ph = null;
            string em = null;

            string connectionString = null;
            SqlConnection connection;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;
            connectionString = "Data Source=laptop-6qs87gl2.database.windows.net;Initial Catalog=CloudProject;Persist Security Info=True;User ID='';Password='';";
            sql = "select FirstName, LastName, BusinessEmail, BusinessPhone from dbo.employee where EmployeeID = " + Session["EmpID"];
            connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();
                command = new SqlCommand(sql, connection);
                dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    fn = Convert.ToString(dataReader.GetValue(0));
                    ln = Convert.ToString(dataReader.GetValue(1));
                    ph = Convert.ToString(dataReader.GetValue(3));
                    em = Convert.ToString(dataReader.GetValue(2));
                }
                Response.Write("<h2> Update employee</h2>    <p> Employee ");
                Response.Write(fn + " " + ln);
                Response.Write(" has the following phone number and email address. </p>");
                Response.Write(ph + " " + em);
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<span>Cannot open connection! </span>");
            }
        }

        protected void do_update(Object sender, EventArgs e)
        {
            string connectionString = null;
            SqlConnection connection;
            SqlCommand command;

            string sql = null;
            connectionString = "Data Source=laptop-6qs87gl2.database.windows.net;Initial Catalog=CloudProject;Persist Security Info=True;User ID=chrodd9604;Password=Password1;";
            connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();

                sql = "update dbo.employee set BusinessPhone = '" + TextBox1.Text + "', BusinessEmail = '" + TextBox2.Text + "' where EmployeeID = " + Session["EmpID"];
                command = new SqlCommand(sql, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                Response.Redirect("confirm_update.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<span>Cannot open connection!<span> ");
            }
        }
    }
