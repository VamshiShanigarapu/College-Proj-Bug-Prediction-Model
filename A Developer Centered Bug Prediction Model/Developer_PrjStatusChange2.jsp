<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Project Status Change</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
.style6 {color:#FF3300}
.style7 {color:#006633}
.style8 {color:#FF3300}
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
				<h2 class="title"><a href="#">Select from Options..</a></h2>
				<div class="entry">
					
						  
		  			 <%			
			
					String developer=(String)application.getAttribute("dname");
					String company=(String)application.getAttribute("dcname");
					String manager=request.getParameter("manager");
					String prjname=request.getParameter("prjname");	
					String status=request.getParameter("status");
					
					
					
		try {
								
														
				if(status.equalsIgnoreCase("open") || status.equalsIgnoreCase("closed") || status.equalsIgnoreCase("completed") || status.equalsIgnoreCase("withdrawn") )
				{
				
										
			 		String query1="select * from prj_status  where (developer='"+developer+"' and company='"+company+"') and prjname='"+prjname+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   
					String query2="Update prj_status set status='"+status+"'  where (developer='"+developer+"' and company='"+company+"') and prjname='"+prjname+"' "; 
					Statement st2=connection.createStatement();
					st1.executeUpdate(query2);
					
					
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style6" style="color:#000000">Project Status Changed Successfully..</p>
		          <p align="left"><a href="Developer_PrjStatusChange.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into prj_status(prjname,company,manager,developer,status) values(?,?,?,?,?)");
						ps.setString(1,prjname);
						ps.setString(2,company);
						ps.setString(3,manager);	
						ps.setString(4,developer);
						ps.setString(5,status);
										
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style6" style="color:#000000">Project Status Set Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="Developer_PrjStatusChange.jsp" class="style16">Back</a></p>
		          <%
			
					}}
							
							
										
				}else  
				{	
						
						%>
							<p class="style6" style="color:#000000">Select any one option..</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="Developer_PrjStatusChange.jsp" class="style16">Back</a></p>						
				  
				  		<%
						
				}
				
						
		}
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
