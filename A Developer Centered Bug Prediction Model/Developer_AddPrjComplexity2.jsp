<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*,java.util.Date,java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Add Complexity Status</title>
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
				<h2 class="title"><a href="#">Adding Complexity Status..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
				
				  <p>
					  <%
					String company=(String)application.getAttribute("dcname");
					String developer= (String)application.getAttribute("dname");
					
				    String prjname=request.getParameter("prjname");
					String manager=request.getParameter("manager");
					
					
	try {
    
						
	
	
            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			
		
			String complexity=request.getParameter("cmp");
	

	PreparedStatement pst=connection.prepareStatement("insert into prj_complexity(company,manager,developer,prjname,complexity,dt) values(?,?,?,?,?,?)");
             
			pst.setString(1,company);
            pst.setString(2,manager);
            pst.setString(3,developer);
			pst.setString(4,prjname);
            pst.setString(5,complexity);
			pst.setString(6,strDate);
			
			
			pst.executeUpdate();
		
					 
                  %> 
			                      <span class="style4 style2 style3"> Complexity Added Successfully...</span>				  </p>
					<p align="center"><a href="Developer_AddPrjComplexity.jsp" class="style47">Back</a></p>
					<%
								
		} 
		catch (Exception e) {
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
