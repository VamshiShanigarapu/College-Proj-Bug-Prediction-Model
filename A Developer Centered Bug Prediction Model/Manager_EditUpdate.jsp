<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Update Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style2 {color: #660000}
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
				<h2 class="title"><a href="#">Edit Update Status..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<%
					
					String prjname=request.getParameter("prjname");
					String prjdesc= request.getParameter("prjdesc");
					String prjmdl= request.getParameter("prjmdl");
					String prjsbmdl= request.getParameter("prjsbmdl");
					String one= request.getParameter("id");
					
				try
				{
					
					int id= Integer.parseInt(one);
					
					
					
										
					String query="Update developer_project set prjdesc='"+prjdesc+"',prjmdl='"+prjmdl+"',prjsbmdl='"+prjsbmdl+"' where prjname='"+prjname+"' and id="+id+" ";
					Statement st= connection.createStatement();
					st.executeUpdate (query);
					
					%>
					<br/><span class="style5 style2">Update Successfully Done..</span><br/>
					<p align="left"><br/><a href="Manager_ViewProjects.jsp">Back</a></p>
					<%
					
					}
					catch(Exception e)
					{
					out.println(e);
					}
					
					
				%>
					
					
					
					
					
					
					
					
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
