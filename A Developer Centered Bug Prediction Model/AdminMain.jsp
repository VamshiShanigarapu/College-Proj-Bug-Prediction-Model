<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Admin Main</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">A Developer Centered Bug Prediction Model</a></h1>
			
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="#">Home</a></li>
			<li><a href="AdminLogin.jsp">Admin</a></li>
			<li><a href="ManagerLogin.jsp">Manager</a></li>
			<li><a href="DeveloperLogin.jsp">Developers</a></li>
			
		</ul>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="content">
			<div class="post">
				<h2 class="title"><a href="#">Welcome <%=(String)application.getAttribute("cname")%> Admin <%=(String)application.getAttribute("cuname")%>..</a></h2>
				<div class="entry">
				<p><img src="images/Admin.png" alt="" width="540" height="323" /></p>
					
					
					
					
					
					
					
					
					
			  </div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
				<li>
					<h2>Categories</h2>
					<ul>
						<li><span></span><a href="AdminMain.jsp">Home</a></li>	
						<li><span></span><a href="Admin_AuthorizeDevelopers.jsp">View all Project Developers and Authorize</a></li>
						<li><span></span><a href="Admin_AuthorizeManagers.jsp">View all Managers and Authorize</a></li>
						<li><span></span><a href="Admin_ViewTeamMembers.jsp">View all Team Members based on Project</a></li>
						<li><span></span><a href="Admin_ViewBugDetails.jsp">View all Bug Details 
						<li><span></span><a href="Admin_ViewBugOcrTimes.jsp">View Number of Times same Bug occurs  in Chart</li></a>
						<li><span></span><a href="Admin_ViewProjectTmMbrInChart.jsp">View No. of Team Members for each Project assigned in Chart</a></li>
						<li><span></span><a href="AdminLogin.jsp">Logout</a></li>					
					</ul>
				</li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>&nbsp;</p>
</div>
</body>
</html>
