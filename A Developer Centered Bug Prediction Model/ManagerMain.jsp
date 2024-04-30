<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Main</title>
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
				<h2 class="title"><a href="#">Welcome <%=(String)application.getAttribute("mcname")%> Manager <%=(String)application.getAttribute("mname")%>..</a></h2>
				<div class="entry">
				  <p><img src="images/Manager.gif" alt="" width="600" height="491" /></p>
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
						<li><span></span><a href="ManagerMain.jsp">Home</a></li>	
						<li><span></span><a href="ManagerProfile.jsp">View Profile</a></li>
						<li><span></span><a href="Manager_ViewTeamMembers.jsp">View Team Members based on Project</a></li>
						<li><span></span><a href="Manager_AddProjects.jsp">Add Projects</a></li>
						<li><span></span><a href="Manager_ViewEmployees.jsp">View Employees and Assign Project</a></li>
						<li><span></span><a href="Manager_ViewProjects.jsp">View all Assigned Project Details</a></li>
						<li><span></span><a href="Manager_ViewTmMbrDefects.jsp">View all Team Members Defects and Give Solution or Allocate to other Team Members</a></li>
						<li><span></span><a href="Manager_AddExtnDates.jsp">Add Extension Date</a></li>
						<li><span></span><a href="Manager_ViewPrjStatus.jsp">View all Projects Status </a></li>
						<li><span></span><a href="Manager_ViewPrjComplexity.jsp">View all Project Complexity </a></li>
						<li><span></span><a href="ManagerLogin.jsp">Logout</a></li>						
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
