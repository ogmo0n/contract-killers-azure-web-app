using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeeFiles : System.Web.UI.Page
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
        string connectionString = null;
        SqlConnection connection;
        SqlCommand command;
        string sql = null;
        SqlDataReader dataReader;
        connectionString = "Data Source=laptop-6qs87gl2.database.windows.net;Initial Catalog=CloudProject;Persist Security Info=True;User ID='';Password='';";
        sql = "select EmployeeID, FirstName, LastName, BusinessEmail from dbo.employee_file";
        connection = new SqlConnection(connectionString);
        try
        {
            connection.Open();
            command = new SqlCommand(sql, connection);
            dataReader = command.ExecuteReader();
            Response.Write(
                "<div class='header'>" +
                    "<header>" +
                        "<a href='Welcome.aspx' class='symbol'><img src='files/C (1).png' class='headimg'/>Contract Killers</a>" +
                        "<ul>" +
                            "<li class='headempl'>" +
                                "<a href='EmployeeList.aspx' class='head-a'><img src='files/employee-invert.svg' class='head-img' />empl</a>" +
                            "</li>" +
                            "<li class='headfile'>" +
                                "<a href='EmployeeFiles.aspx' class='head-a'><img src='files/file.svg' class='head-img' />file</a>" +
                            "</li>" +
                            "<li class='headdept'>" +
                                "<a href='EmployeeDept.aspx' class='head-a'><img src='files/department.svg' class='head-img' />dept</a>" +
                            "</li>" +
                        "</ul>" +
                    "</header>" +
                "</div>" +
            "<h2 class='titles'>Employee Details</h2>");
            string linkTxt;
            while (dataReader.Read())
            {
                //linkTxt = "<a href=\"update_cloud.aspx?cid=" + dataReader.GetValue(0) + "\">" + dataReader.GetValue(0) + " &raquo;</a>";
                linkTxt = "<a href=\"indvd_cloud.aspx?cid=" + dataReader.GetValue(0) + "\">" + dataReader.GetValue(0) + " &raquo;</a>";
                Response.Write(linkTxt + " - <span>" + dataReader.GetValue(1) + "</span> - <span>" + dataReader.GetValue(2) + "</span> - <span>" + dataReader.GetValue(3) + "<a href=" + "update_cloud.aspx" + "> Update </a></span></br>");
            }
            dataReader.Close();
            command.Dispose();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<span>Cannot open connection! </span>");
        }
    }
}
