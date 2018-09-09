<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indvd_cloud.aspx.cs" Inherits="indvd_cloud" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Individual</title>
    <link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="author" content="Christopher Odden">
	<meta name="description" content="CIS370 Cloud Application Development cloud website">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<form id="form1" runat="server">
<div>
<%Session["EmpID"] = Request.QueryString["cid"];
string ph = null;
string em = null;
string url = null;
string linkTxt = null;
if (Request.IsAuthenticated)
{
Response.Write("<p>Requested by: " + User.Identity.Name + "</p></br>");
}
else
{
Response.Redirect("Unauthorized.aspx");
} 
string connectionString = null;
SqlConnection connection;
SqlCommand command;
string sql = null;
SqlDataReader dataReader;
connectionString = "Data Source=laptop-6qs87gl2.database.windows.net;Initial Catalog=CloudProject;Persist Security Info=True;User ID=chrodd9604;Password=Password1;";
sql = "select EmployeeID, FirstName, LastName, BusinessPhone, BusinessEmail from dbo.employee where EmployeeID = " + Session["EmpID"];
connection = new SqlConnection(connectionString);
try
{
connection.Open();
command = new SqlCommand(sql, connection);
dataReader = command.ExecuteReader();
//Response.Write("<h2>Customer Details</h2>");
while (dataReader.Read())
{
//linkTxt = "<a href=\"update_cloud.aspx?cid=" + dataReader.GetValue(0) + "\">" + dataReader.GetValue(0) + " &raquo;</a>";
linkTxt = "<a href=\"indvd_cloud.aspx?cid=" + dataReader.GetValue(0) + "\">" + dataReader.GetValue(0) + " &raquo;</a>";
Response.Write(" <h2 class='titles'> " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2) + " </h2> " );
ph = dataReader.GetString(3);
em = dataReader.GetString(4);
//url = dataReader.GetString(5);
}
dataReader.Close();
command.Dispose();
connection.Close();
}
catch (Exception ex)
{
Response.Write("<span>Cannot open connection! </span>");
}

//string imglink = "<asp:image ID =\"Image1\" runat=\"server\" ImageUrl=\"" + url + "\" Width =\"300\" Height=\"250\"></asp:image>";

//Response.Write(url); 

//Response.Write(imglink);

//Response.Write("<asp:image ID =\"Image1\" runat=\"server\" ImageUrl=\"");
//Response.Write(url);
//Response.Write("\" Width =\"300\" Height=\"250\"></asp:image>");

//Image12.ImageUrl = "IMG_8693.JPG";

Image12.ImageUrl = url;

%> 
<asp:image ID ="Image12" runat="server" Width ="300" Height="250"></asp:image> 

</br></br>
Details: 
</br></br>
Phone: <% =ph %>
</br></br>
Email: <% =em %>
</br></br>
<%linkTxt = "<a href=\"update_cloud.aspx?cid="; 
linkTxt = linkTxt + Session["EmpID"];
linkTxt = linkTxt + "\"> Update Details &raquo;</a>";
Response.Write(linkTxt);
%>
</div>
</form>
</body>
</html>