<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Profile</title>
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
				<h2 class="title"><a href="#"> <%=request.getParameter("uname")%>'s Profile..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					
						<%			
						
					String type=request.getParameter("type");
					String prjname=request.getParameter("prjname");	
					String cname=(String)application.getAttribute("cname");
					String user=request.getParameter("uname");
		    								
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from manager where cname='"+cname+"' and username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
								s8=rs.getString(10);
								
								
					%>
			<p align="center" > <input  name="image" type="image" src="manager_Pic.jsp?id=<%=i%>" style="width:170px; height:170px;" /> </p>		
			<table width="401" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >		
            
			
			<tr>
              <td  width="156" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Company Name</b></div></td>
              <td  width="239" valign="middle" height="40" style="color: #006666;"><div align="left" class="style6" style="margin-left:20px;">
                        <b>  <%out.println(s1);%> </b>
              </div></td>
            </tr>
			
			<tr>
              <td  width="156" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Designation</b></div></td>
              <td  width="239" valign="middle" height="40" style="color: #CC6600;"><div align="left" class="style6" style="margin-left:20px;">
                        <b>  <%out.println(s8);%> </b>
              </div></td>
            </tr>
			
            <tr>
              <td  width="156" height="37" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>E-Mail</b></div></td>
              <td  width="239" valign="middle" height="40" style="color:#CC3300;"><div align="left" class="style66" style="margin-left:20px;">
                          <b><%out.println(s3);%></b>
              </div></td>
            </tr>
            <tr>
              <td  width="156" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Mobile</b></div></td>
              <td  width="239" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s4);%>
              </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Address</b></div></td>
              <td  width="239" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s5);%>
              </div></td>
            </tr>
            <tr>
              <td  width="156" height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Date of Birth</b></div></td>
              <td  width="239" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s6);%>
              </div></td>
            </tr>
            <tr>
              <td  width="156" height="40" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Gender</b></div></td>
              <td  width="239" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s7);%>
              </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
		  
		  			<h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Admin_AuthorizeManagers")){%>
            <h3 align="right"><a href="Admin_AuthorizeManagers.jsp" class="style3 style5">Back</a></h3>
			<%}
			else if(type.equalsIgnoreCase("Admin_ViewTeamMembers")){%>
            <h3 align="right"><a href="Admin_ViewTeamMembers.jsp" class="style5 style3">Back</a></h3>
			<%}	
			else if(type.equalsIgnoreCase("Admin_ViewTeamManagerSolution")){%>
            <h3 align="right"><a href="Admin_ViewTeamMngrSoln.jsp?prjname=<%=prjname%>" class="style5 style3">Back</a></h3>
			<%}	
					
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
						<li><span></span><a href="AdminMain.jsp">Home</a></li>	
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
