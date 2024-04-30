<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Add Extension Date</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.extdate.value;
if(na3=="")

{
alert("Please Enter Extension Date");
document.s.extdate.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {color: #000000}
.style7 {color:#006633}
.style8 {color:#CC6600}
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
				<h2 class="title"><a href="#">Enter Extension Date..</a></h2>
				<div class="entry">
				<p>&nbsp;</p>
				<%
						String prjname=request.getParameter("prjname");
						String stdate=request.getParameter("stdate");
						String endate=request.getParameter("endate");
						String exptdate=request.getParameter("exptdate");
					  					
				
				%>
					<form action="Manager_AddExtnDates2.jsp?prjname=<%=prjname%>&stdate=<%=stdate%>&endate=<%=endate%>&exptdate=<%=exptdate%>" method="post" name="s" onsubmit="return valid()" >
                      
			        <span class="style33">
			        <label for="extdate"><span class="style1">Extension Date (required)</span></label>
                    </span>
			        <p class="style33">
                      <input type="date" id="extdate" name="extdate" />
                    </p>
			              					
			       <br />
                      <input name="submit" type="submit" value="Add" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="center" class="style14"><a href="Manager_AddExtnDates.jsp" class="style11">Back</a></p>
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
