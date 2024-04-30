<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Add Complexity</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color:#000000}
.style7 {color:#006633}
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
				<h2 class="title"><a href="#">Select Project and Add Complexity..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					
						<table width="431" height="74" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="45"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
					  <td  width="189" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Project Name</b></div></td>
					  <td  width="189" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b></b></div></td>
                      </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
					  	String developer=(String)application.getAttribute("dname");
					  	String company=(String)application.getAttribute("dcname");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from developer_project where company='"+company+"' and developer='"+developer+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(5);
								s2=rs.getString(3);
								
								
								i++;
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5"><span class="style1">
                        <%out.println(i);%>
                      </span></div></td>
				      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            <span class="style7">
                       <b> <%out.println(s1);%> </b> 	   </span></div></td>
					  <td height="0" align="center"  valign="middle"><a href="Developer_AddPrjComplexity1.jsp?prjname=<%=s1%>&manager=<%=s2%>"><input name="adprj" type="button" value="Add Project Complexity" /></a>					</td>
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
                    <p>&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
					<p align="left" class="style14">&nbsp;</p>
					<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="DeveloperMain.jsp" class="style14">Back</a></div></td>
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
