<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Project Assigning Status</title>
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
				<h2 class="title"><a href="#">Assigning Project Status..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<%			
					
					String 	company=(String)application.getAttribute("mcname");
					String  manager=(String)application.getAttribute("mname");		
						
					String developer= request.getParameter("developer");	
					String	pname=request.getParameter("pname");
					String	stdate=request.getParameter("stdate");
					String	endate=request.getParameter("endate");
					String	exptdate=request.getParameter("exptdate");
					String	prjdesc=request.getParameter("prjdesc");
					String	prjmdname=request.getParameter("prjmdname");
					String	prjsbmd=request.getParameter("prjsbmd");
					
					
			try {
								
														
						
		
						
			 			String query1="select * from developer_project  where prjname='"+pname+"' and company='"+company+"' and developer='"+developer+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style1" style="color:#660000">This Project Already Assigned to this Developer..</p>
		          <p align="left"><a href="Manager_ViewEmployees.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			          
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into developer_project(company,manager,developer,prjname,stdate,endate,exptdate,assndate,prjdesc,prjmdl,prjsbmdl) values(?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,company);
						ps.setString(2,manager);
						ps.setString(3,developer);
						ps.setString(4,pname);
						ps.setString(5,stdate);
						ps.setString(6,endate);	
						ps.setString(7,exptdate);
						ps.setString(8,strDate);
						ps.setString(9,prjdesc);
						ps.setString(10,prjmdname);
						ps.setString(11,prjsbmd);
						
				
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style1" style="color:#660000">Project Assigned Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="ManagerMain.jsp" class="style16">Back</a></p>
		          <%
			
					}}}
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
