<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Member Solution Details..</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {color: #000000}
.style5 {color: #000000}
.style7 {color: #CC0033}
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
				<h2 class="title"><a href="#">Team Member Solution Details..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				
				
					<table width="471" height="74" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
			    <td  width="132" height="29" valign="baseline" bgcolor="#FFFFFF" style="color: #660033;"><div align="center" class="style4 style6" ><b>Team Member</b></div></td>
                 <td  width="179" height="29" valign="baseline" bgcolor="#FFFFFF" style="color: #660033;"><div align="center" class="style4 style6" ><b>Given Solution</b></div></td>
                 <td  width="152" height="29" valign="baseline" bgcolor="#FFFFFF" style="color: #660033;"><div align="center" class="style4 style6" ><b>Solution Given Date </b></div></td>
                 
				 
                 
               </tr>
         
		 
		   
            <%
					  String prjname=request.getParameter("prjname");
					  String one=request.getParameter("id");
					  
					  String company=(String)application.getAttribute("cname");
					 
				
					  String mbr="",sol="",date="";
					  int i=1,j=0,count=0,r=0;
					
						try 
						{
							
							
							int id = Integer.parseInt(one);
							
							
							
						   	String query="select * from developer_soln where (company='"+company+"' and prjname='"+prjname+"') and reqid="+id+" "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
				
								mbr=rs.getString(5);
								sol=rs.getString(7);
								date=rs.getString(8);
								
								
							
							
								
								
								count++;
								
					%>
            <tr>
		  	 <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7" >
                    <div align="center">
                    <b><%out.println(mbr);%></b>
                </div>
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(sol);%>
                </div>
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(date);%> 
              </div></td>
			  
			  
			  
			   
            </tr>
            <%
			
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("Solution Not Given by the Team Member");}
					
					%>
        </table>
		
			<p>&nbsp;</p>
		<div align="right" class="style22"><a href="Admin_ViewTeamMbrSoln.jsp?prjname=<%=prjname%>" class="style11">Back</a></div>
					
					
					
					
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
