<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Bug Occurence Times..</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
.style7 {color:#FF0000}
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
				<h2 class="title"><a href="#">Number Of Times Same Bug Occures.</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<table width="322" height="90" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="33"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="183" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Bug Details</b></div></td>
					  <td  width="98" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>No of Times Bug Occured</b></div></td>
					  </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
					  
					  	String prjname=request.getParameter("prjname");
					  	String company=(String)application.getAttribute("cname");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,count=0;
						try 
						{
						   	String query="select defects,count(defects) from defects_tmanager where company='"+company+"' GROUP BY defects"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								count=rs.getInt(2);
								
								
								i++;
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5"><span class="style1">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            <span class="style7">
                       <b> <%out.println(s1);%> </b> 	                 </span></div></td>
					    <td height="0" align="center"  valign="middle"><div align="center" class="style1">
                            <span class="style1">
                       <b> <%out.println(count);%> </b> 	                 </span></div></td>
					  </tr>
                    <%
						}
						
					

				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
		  
		  			<form id="form1" method="post" action="Admin_ViewSameBugInChart.jsp">
                          <input type="hidden" name="prjname" value="<%=prjname%>" />
                          <input type="submit" name="Submit" value="Show In Chart" style="background-color:#FF3300; color:#FFFFFF; />
                      	</form>
						
						
                    <p>&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
					<p align="left" class="style14">&nbsp;</p>
					<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="Admin_ViewBugOcrTimes.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
					
					
					
					
					
					
					
					
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
