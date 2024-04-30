<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Edit Project</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
.style4 {color:#FFFFFF}
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
				<h2 class="title"><a href="#">Edit Project..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<%
    
    String id=request.getParameter("id");
    String prjname=request.getParameter("prjname");
    String company=request.getParameter("company");	
	String manager=request.getParameter("manager");
	String prjdesc="",prjmdl="",prjsbmdl="";
			
   	try 
	{
	
		   String query="select prjdesc,prjmdl,prjsbmdl from developer_project where (id="+id+" and prjname='"+prjname+"') and (company='"+company+"' and manager='"+manager+"') "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			prjdesc=rs.getString(1);
			prjmdl=rs.getString(2);
			prjsbmdl=rs.getString(3);
		
	   }
    
    %>
    


<form name="s" action="Manager_EditUpdate.jsp?id=<%=id%>&prjname=<%=prjname%>" method="post" >

<table width="489" height="259" bgcolor="#009900" border="1" align="center">

			
	<tr>
		<td width="195"><span class="style4">Project Description  : </span></td>
		<td width="264"><textarea name="prjdesc" cols="38" rows="2" id="prjdesc"><%=prjdesc%></textarea></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Project Module  : </span></td>
		<td width="264"><input name="prjmdl" type="text" id="prjmdl" size="50" value="<%=prjmdl%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Project Sub Modules  : </span></td>
		<td width="264"><textarea name="prjsbmdl" cols="38" rows="2" id="prjsbmdl"><%=prjsbmdl%></textarea></td>
	</tr>
	
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit2" value="Update" /></td>
	</tr>
	
</table>
<p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
              </p>
		              
</form>
  
  <p>&nbsp;</p>
  
  
  <p>&nbsp;</p>
  <div align="center">
		          <p><a href="Manager_ViewProjects.jsp" class="style14">Back</a></p>
  </div>
					
					
					
					
					
					
					
					
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
