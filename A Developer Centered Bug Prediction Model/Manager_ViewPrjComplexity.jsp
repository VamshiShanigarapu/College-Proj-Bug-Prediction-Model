<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>View Project Complexity</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
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
				<h2 class="title"><a href="#">All Complexity of the Project While Developing..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					
					<table width="356" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="37"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="142" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b>Project Name</b></div></td>
					  <td  width="142" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><b></b></div></td>
                      </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
					  	String manager=(String)application.getAttribute("mname");
					  	String company=(String)application.getAttribute("mcname");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select distinct(prjname) from developer_project where company='"+company+"' and manager='"+manager+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								
								
								i++;
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5"><span class="style1">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            <span class="style7">
                       <b> <%out.println(s1);%> </b> 	                 </span></div></td>
					  <td height="0" align="center"  valign="middle"><a href="Manager_ViewPrjComplexity1.jsp?prjname=<%=s1%>"><input name="adprj" type="button" value="View Complexity" /></a>					</td>
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
              <td width="468"><div align="right"><a href="ManagerMain.jsp" class="style14">Back</a></div></td>
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
