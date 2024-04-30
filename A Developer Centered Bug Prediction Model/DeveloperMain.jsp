<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Developer Main</title>
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
				<h2 class="title"><a href="#">Welcome <%=(String)application.getAttribute("dcname")%> Developer <%=(String)application.getAttribute("dname")%>..</a></h2>
				<div class="entry">
				<p><img src="images/Developer.jpg" alt="" width="614" height="475" /></p>
					
					
					
					
					
					
					
					
					
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
						<li><span></span><a href="DeveloperMain.jsp">Home</a></li>		
						<li><span></span><a href="DeveloperProfile.jsp">View Profile</a></li>
						<li><span></span><a href="Developer_ViewAsgnProjects.jsp">View all Assigned Projects</a></li>
						<li><span></span><a href="Developer_SendDefectsTeamMember.jsp">Set Defects to Team Member</a></li>
						<li><span></span><a href="Developer_SendDefectsTeamManager.jsp">Set Defects to Team Manager</a></li>
						<li><span></span><a href="Developer_ViewSolutions.jsp">View Solutions based on Team Member and Manager</a></li>
						<li><span></span><a href="Developer_PrjStatusChange.jsp">View all Projects Status</a></li>
						<li><span></span><a href="Developer_ViewTmMbrDefects.jsp">View all Team Members Defects and give Solution</a></li>
						<li><span></span><a href="Developer_PrjExtnDetails.jsp">View all assigned Projects extension details</a></li>
						<li><span></span><a href="Developer_AddPrjComplexity.jsp">Add Complexity of the Project </a></li>
						<li><span></span><a href="DeveloperLogin.jsp">Logout</a></li>				
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
