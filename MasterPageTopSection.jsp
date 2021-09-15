<%@taglib uri='/WEB-INF/mytags/trtags.tld' prefix='tr' %>
<tr:Backdoor>
<jsp:forward page='/LoginForm.jsp' />
</tr:Backdoor>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styleTwo/css/styles.css'>
</head>
<body>
<!-- Main Container starts here -->
<div class='main-container'>
<!-- Header starts here -->
<div class='header'>
<img src='/styleTwo/images/logo.png' class='logo'>
<div class='brand-name'>Tanishq Rawat</div>
<div class='profile'>
<img src='/styleTwo/images/user.png'>&nbsp;
${username} &nbsp;&nbsp;&nbsp;&nbsp;
<a href='/styleTwo/logout'>Logout</a>
</div>
</div><!-- Header ends here -->
<!-- Content Section starts here -->
<div class='content'>
<!-- Left Panel starts here  -->
<div class='content-left-panel'>

<tr:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</tr:If>
<tr:If condition='${module!=DESIGNATION}'>
<a href='/styleTwo/Designations.jsp'>Designations</a><br>
</tr:If>

<tr:If condition='${module==EMPLOYEE}'>
<b>Employees</b><br>
</tr:If>
<tr:If condition='${module!=EMPLOYEE}'>
<a href='/styleTwo/Employees.jsp'>Employees</a><br>
</tr:If>

<tr:If condition='${module!=HOME}'>
<br>
<a href='/styleTwo/index.jsp'>Home</a><br>
</tr:If>

</div>
<!-- Left Panel ends here  -->
<!-- Right Panel starts here -->
<div class='content-right-panel'>
