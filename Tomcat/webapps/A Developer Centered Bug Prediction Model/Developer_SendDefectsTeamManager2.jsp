<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sending Defects to Team Manager Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style3 {color: #000000; font-weight: bold; }
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
				<h2 class="title"><a href="#">Sending Defects to Team Manager Status..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<%			
					
										
      				String company= (String)application.getAttribute("dcname");
					String developer= (String)application.getAttribute("dname");
					
					String prjname= request.getParameter("prjname");
					String dfct= request.getParameter("dfct");
					String manager=request.getParameter("tmngr");
					
					
			try {
								
														
						
							   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			          
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into defects_tmanager(company,developer,prjname,manager,defects,reqdate) values(?,?,?,?,?,?)");
						ps.setString(1,company);						
						ps.setString(2,developer);
						ps.setString(3,prjname);
						ps.setString(4,manager);
						ps.setString(5,dfct);
						ps.setString(6,strDate);	
						
						
				
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style1" style="color:#660000">Project Defect Sent to Team Manager Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="DeveloperMain.jsp" class="style16">Back</a></p>
		          <%
			
					}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
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
						<li><span></span><a href="DeveloperMain.jsp">Home</a></li>		
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
