<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Authentication</title>
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
				<h2 class="title"><a href="#">Authentication..!</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<%
	String mcname = request.getParameter("cname");
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");


	try {
					
			
					String sql = "SELECT * FROM manager where username='"+name+"' and password='"+pass+"' and cname='"+mcname+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM manager where username='"+name+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);								
									
									application.setAttribute("mname", name);
									application.setAttribute("mcname",mcname);
									response.sendRedirect("ManagerMain.jsp");
								
								}
								else
								{
										%>
									<h3><p align="left" class="style3">&nbsp;</p>
									  <p align="left" class="style3" style="color:#660000">You are not Authorized by the Company Admin, Please wait!! </p>
									</h3><br/><br/><a href="ManagerLogin.jsp">Back</a>
									<%
								 }
					
					}
					else
					{
						response.sendRedirect("ManagerRe-Login.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
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
						<li><span></span><a href="index.html">Home</a></li>						
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
