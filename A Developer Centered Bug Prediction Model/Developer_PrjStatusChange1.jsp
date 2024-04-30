<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Project Status Change</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" language="javascript">

function checkOnlyOne(b){

var x= document.getElementsByClassName('prjstat');
var i;

for (i=0; i < x.length; i++) {
	if( x[i].value !=b ) x[i].checked = false;
	}
	
}
</script>
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
		  String prjname=request.getParameter("prjname");
		  String manager=request.getParameter("manager");
		  %>
            
            
			<form id="form1" name="form1" method="post" action="Developer_PrjStatusChange2.jsp?prjname=<%=prjname%>&manager=<%=manager%>">
				   					
					<table width="464" border="0" cellspacing="2" cellpadding="2">
						
                      <tr>
					 	<td><input class="prjstat" onclick="checkOnlyOne(this.value);" type="checkbox" name="status" value="open" />
				 	    <span class="style8">Open</span> </td>
					  </tr>
					  <tr>							
						<td><input class="prjstat" onclick="checkOnlyOne(this.value);" type="checkbox" name="status" value="closed" />
					    <span class="style8">Closed </span></td>
                      </tr>
					   <tr> 
						<td><input class="prjstat" onclick="checkOnlyOne(this.value);" type="checkbox" name="status" value="completed" />
					     <span class="style8">Completed</span></td>
			           </tr>
					   <tr> 
						<td><input class="prjstat" onclick="checkOnlyOne(this.value);" type="checkbox" name="status" value="withdrawn" />
					     <span class="style8">Withdrawn</span></td>
			           </tr>
                      <tr>
                        
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Submit" />
                         </span></td>
                      </tr>
                      <tr>
                        
                        <td>&nbsp;</td>
                      </tr>
                    </table>
					
		    </form>
			
			
										
					<div align="center"><a href="Developer_PrjStatusChange.jsp">back</a> </div>
					
					
					
					
					
					
					
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
