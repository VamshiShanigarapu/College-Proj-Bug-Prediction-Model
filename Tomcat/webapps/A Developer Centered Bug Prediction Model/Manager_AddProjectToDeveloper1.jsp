<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Add Project To Developer</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.prjdesc.value;
if(na3=="")

{
alert("Please Enter Project Description");
document.s.prjdesc.focus();
return false;
}

var na4=document.s.prjmdname.value;
if(na4=="")

{
alert("Please Enter Project Module Name");
document.s.prjmdname.focus();
return false;
}

var na5=document.s.prjsbmd.value;
if(na5=="")

{
alert("Please Add Project Sub Modules");
document.s.prjsbmd.focus();
return false;
}

}
</script>
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
				<h2 class="title"><a href="#">Add Project To Developer..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					<form action="Manager_AddProjectToDeveloper2.jsp" method="post" name="s" onsubmit="return valid()">
			        
                    <%
	
      				String company= (String)application.getAttribute("mcname");
					String manager= (String)application.getAttribute("mname");
					String developer= request.getParameter("developer");
					String pname=  request.getParameter("pname");
					String stdate="",endate="",exptdate="";
	

      	try 
	{
      		
      		       		
      		 
           
           String query="select stdate,endate,exptdate from project where prjname='"+pname+"' and company='"+company+"' and manager='"+manager+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
		
			stdate = rs.getString(1);
			endate = rs.getString(2);
			exptdate = rs.getString(3);
		
	   }
	   
		
		
%>

                    <table width="575" border="0" align="left">
                      
					  <tr>
                        <td width="188" height="36"><div align="justify"><span class="style1">Project Name :</span> </div></td>
                        <td width="377"><label>
                          <input type="text" id="pname" name="pname" value="<%=pname%>" readonly />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36"><div align="justify"><span class="style1">Start Date :</span> </div></td>
                        <td><label>
                          <input id="stdate" name="stdate" value="<%=stdate%>" readonly />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style1">End Date :</span></div></td>
                        <td><label>
                          <input type="text" id="endate" name="endate" value="<%=endate%>" readonly />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style1">Expected Date :</span></div></td>
                        <td><label>
                          <input type="text" id="exptdate" name="exptdate" value="<%=exptdate%>" readonly />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="53"><div align="justify"><span class="style1">Project Description :</span></div></td>
                        <td><label>
                          <textarea name="prjdesc" cols="16" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="51"><div align="justify"><span class="style1"> Project Module Name :</span></div></td>
                        <td><label>
						  <textarea name="prjmdname" id="prjmdname"></textarea>	
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style1"> Add Project Submodules :</span></div></td>
                        <td><label>
						  <textarea name="prjsbmd" cols="16" rows="2" id="prjsbmd"></textarea>	
                        </label></td>
                      </tr>					 					                        
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
						  	<input type="hidden" name="developer" value="<%=developer%>" />
                            <input type="submit" name="Submit" value="Assign Project" />
                          </div></td>
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
		
					<div align="right">
					
				
					  <p>&nbsp;</p>
					  <p align="center">&nbsp;</p>
					  <p align="center"><a href="ManagerMain.jsp" class="style11">Back</a></p>
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
