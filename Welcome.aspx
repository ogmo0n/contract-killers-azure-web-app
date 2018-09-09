<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>CK Welcome Page</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="author" content="Christopher Odden">
	<meta name="description" content="CIS370 Cloud Application Development cloud website">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<div class="header">
		<header>
			<a href="Welcome.aspx"><img src="files/C (1).png" class="headimg"/>Contract Killers</a>
			<ul>
				<li class="headempl">
					<a href ="EmployeeList.aspx" class="head-a"><img src="files/employee-invert.svg" />empl</a>
				</li>
				<li class="headfile">
					<a href="EmployeeFiles.aspx" class="head-a"><img src="files/file.svg" />file</a>
				</li>
				<li class="headdept">
					<a href="EmployeeDept.aspx" class="head-a"><img src="files/department.svg" />dept</a>
				</li>
			</ul>
		</header>
	</div>

	<div class="content">
		<h1 class="company">contract killers</h1>
		<div class="logo">
			<img src="files/colors (1).png"/>
		</div>
		<h2 class="mission">we kill.</h2>
		<div class="icons">
			<div class="empl">
				<a href ="EmployeeList.aspx"><img src="files/employee-invert.svg" class="butt one"/></a>
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
