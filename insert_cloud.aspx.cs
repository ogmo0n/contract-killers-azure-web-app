using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class insert_cloud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      /* if (Request.IsAuthenticated)
        {
            Response.Write("Requested by: " + User.Identity.Name + "</br>");
        }
        else
        {
            Response.Redirect("Unauthorized.aspx");
        } */
    }


    protected void do_insert(Object sender, EventArgs e)
    {
        string connectionString = null;
        SqlConnection connection;
        SqlCommand command;

        SqlDataReader dataReader;
        long EmpID = 0;

        string sql = null;
        connectionString = "Data Source=laptop-6qs87gl2.database.windows.net;Initial Catalog=CloudProject;Persist Security Info=True;User ID=chrodd9604;Password=Password1;";
        connection = new SqlConnection(connectionString);
        try
        {
            connection.Open();
            //sql = "insert into dbo.employee (FirstName, LastName, BusinessEmail, PasswordHash, PasswordSalt) ";
            //sql = sql + "values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', 'abc', 'xyz')";
            sql = "insert into dbo.employee (FirstName, LastName, BusinessEmail, BusinessPhone) ";
            sql = sql + "values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')";
            //Response.Write("<p>" + sql + "</p>");
            command = new SqlCommand(sql, connection);
            command.ExecuteNonQuery();
            command.Dispose();
            connection.Close();

            Response.Write("<span>New employee inserted!</span>");
            string linkTxt;
            linkTxt = "<a href=\"view_emp_cloud.aspx\">" + "View Employees" + " &raquo;</a>";
            Response.Write(linkTxt);
        }
        catch (Exception ex)
        {
            Response.Write("<span>Cannot open connection! </span>");
        }
    }
}