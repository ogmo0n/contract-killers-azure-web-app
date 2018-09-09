<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert_cloud.aspx.cs" Inherits="insert_cloud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Employee Form</title>
    <link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="author" content="Christopher Odden">
	<meta name="description" content="CIS370 Cloud Application Development cloud website">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body style="height: 439px">
    <div class="header">
		<header>
			<a href="Welcome.aspx" class="symbol"><img src="files/C (1).png" class="headimg"/>Contract Killers</a>
			<ul>
				<li class="headempl">
					<a href="EmployeeList.aspx" class="head-a"><img src="files/employee-invert.svg" class="head-img" />empl</a>
				</li>
				<li class="headfile">
					<a href="EmployeeFiles.aspx" class="head-a"><img src="files/file.svg" class="head-img" />file</a>
				</li>
				<li class="headdept">
					<a href="EmployeeDept.aspx" class="head-a"><img src="files/department.svg" class="head-img" />dept</a>
				</li>
			</ul>
		</header>
	</div>
    <div>
		<h2 class="titles">Insert New Employee</h2>
	</div>
	<div>
		<span>Please enter the following employee information:</span>
	</div>
    <form id="form1" runat="server">
        <div>
			<p>First Name:</p>
			<asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>
		</div>
		<div>
			<p>Last Name:</p>
			<asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox>
		</div>
		<div>
			<p>Email:</p>
			<asp:TextBox ID="TextBox3" runat="server" class="input"></asp:TextBox>
		</div>
        <div>
			<p>Phone:</p>
			<asp:TextBox ID="TextBox4" runat="server" class="input"></asp:TextBox>
		</div>
		<div>
			<asp:Button ID="Button1" runat="server" Text="Insert" class="button" onClick="do_insert"/>
		</div>
	</form>
    <div>
		<div class="icons">
			<div class="empl">
				<a href="EmployeeList.aspx"><img src="files/employee-invert.svg" class="butt one"/></a>
			</div>
			<div class="file">
				<a href="EmployeeFiles.aspx"><img src="files/file.svg" class="butt three"/></a>
			</div>	
			<div class="dept">
				<a href="EmployeeDept.aspx"><img src="files/department.svg" class="butt two"/></a>
			</div>
		</div>
		<div class="social-media">
			<div class="social soundcloud">
				<a href="https://soundcloud.com/mec_lab"><img src="files/soundcloud.svg" /></a>
			</div>
			<div class="social facebook">
				<a href="https://www.facebook.com/Mec_Lab-1885008538402738/"><img src="files/facebook.svg" /></a>
			</div>
			<div class="social linkedin">
				<a href="https://www.linkedin.com/in/christopher-odden-8b23b013a/"><img src="files/linkedin.svg" /></a>
			</div>
			<div class="social mixcloud">
				<a href="https://www.mixcloud.com/Mec_Lab/"><img src="files/mixcloud.svg" /></a>
			</div>
		</div>
    </div>
</body>
</html>
