<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Give Solution</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">
function valid()
{

var na1=document.s.cmp.value;
if(na1=="")
{

alert("Enter Project Complexity");
document.s.cmp.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style2 {
	color: #006600;
	font-weight: bold;
}
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
				<h2 class="title"><a href="#">Add Complexity of the Project While Developing..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					
						<%
					String company=(String)application.getAttribute("dcname");
					String developer= (String)application.getAttribute("dname");
					
					
				    String prjname=request.getParameter("prjname");
					String manager=request.getParameter("manager");
				   
					
		  
		  %>
		  
            <form name="s" action="Developer_AddPrjComplexity2.jsp?prjname=<%=prjname%>&manager=<%=manager%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="right" class="style9 style4 style2"  style="margin-left:20px;">Write Complexity </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="cmp" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Submit" style="width:100px; height:35px; background-color:#006600; color:#FFFFFF;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
	 
	 		
			<p>&nbsp;</p>
		<div align="right" class="style22"><a href="Developer_AddPrjComplexity.jsp" class="style11">Back</a></div>
					
					
					
					
					
					
					
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
