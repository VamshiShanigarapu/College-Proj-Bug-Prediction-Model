<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Add Projects</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.pname.value;
if(na3=="")

{
alert("Please Enter Project Name");
document.s.pname.focus();
return false;
}

var na4=document.s.stdate.value;
if(na4=="")

{
alert("Please Enter Start Date");
document.s.stdate.focus();
return false;
}

var na5=document.s.endate.value;
if(na5=="")

{
alert("Please Enter End Date");
document.s.endate.focus();
return false;
}

var na6=document.s.exptdate.value;
if(na6=="")

{
alert("Please Enter Expected Date");
document.s.exptdate.focus();
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
				<h2 class="title"><a href="#">Add Projects..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
					
					<form action="Manager_AddProjects1.jsp" method="post" name="s" onsubmit="return valid()" >
                      <span class="style1">
                      <label for="name">
					
					Project Name (required)</label>
                      </span>
<p class="style33">
                      <input id="name" name="pname" class="text" />
                    </p>
			        <span class="style33">
			        <label for="stdate"><span class="style1">Start Date (required)</span></label>
                    </span>
			        <p class="style33">
                      <input type="date" id="stdate" name="stdate" />
                    </p>
			        <span class="style33 style1">
			        <label for="endate">End Date (required)</label>
                    </span>
			        <p class="style33">
                      <input type="date" id="endate" name="endate" />
                    </p> 
					<span class="style33 style1">
			        <label for="exptdate">Expected Date (required)</label>
                    </span>
			        <p class="style33">
                      <input type="date" id="exptdate" name="exptdate" />
                    </p>      					
			       <br />
                      <input name="submit" type="submit" value="Add" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="ManagerMain.jsp" class="style11">Back</a></p>
		          </form>
					
					
					
					
					
					
					
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
