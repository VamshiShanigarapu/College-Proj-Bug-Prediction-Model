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
var na3=document.s.pname.value;
if(na3=="--Select--")

{
alert("Please Select Project");
document.s.pname.focus();
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
					<form action="Manager_AddProjectToDeveloper1.jsp" method="post" name="s" onsubmit="return valid()">
			        
                    <%
					String developer= request.getParameter("uname");
					
      				String company= (String)application.getAttribute("mcname");
					String manager= (String)application.getAttribute("mname");
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select prjname from project where company='"+company+"' and manager='"+manager+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString(1));
		
	   }
	   
		
		
%>

                    <table width="575" border="0" align="left">
					<tr>
                        <td height="36"><div align="justify"><span class="style1">Selected Employee :</span> </div></td>
                        <td><label>
                          <input type="text" id="developer" name="developer" value="<%=developer%>" readonly />
                        </label></td>
                      </tr>
                      <tr>
                        <td width="141" height="33"><div align="justify"><span class="style1">Select Project :</span></div></td>
                        <td width="424"><label>
                          <select id="s1" name="pname" style="width:150px">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
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
