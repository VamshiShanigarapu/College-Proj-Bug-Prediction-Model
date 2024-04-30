<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Register</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.cname.value;
if(na3=="--Select--")

{
alert("Please Select Company Name");
document.s.cname.focus();
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
				<h2 class="title"><a href="#">Welcome To Manager Registration..</a></h2>
				<div class="entry">
				<p><img src="images/Register.jpg" alt="" width="270" height="124" /></p>
					<form name="s" action="ManagerRegisterStatus.jsp" enctype="multipart/form-data" method="post" onsubmit="return valid()"  >
					<span class="style1">
			        <label for="gender">Select Company Name (required)</label>
                    </span>
					 <p class="style1">
                      <select id="s2" name="cname" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Infosys</option>
					    <option>IBM</option>
						<option>Accenture</option>
						<option>Oracle</option>    
						<option>TCS</option>
                      </select>
                    </p>
                    <label for="name"><span class="style1">
					
					User Name (required)</span></label>
                    <p class="style1">
                      <input id="name" name="userid" class="text" />
                    </p>
			        <span class="style1">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style1">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style1">
			        <label for="email">Email Id (required)</label>
                    </span>
			        <p class="style1">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style1">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style1">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style1">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style1">
                      <textarea id="address" name="address" rows="3" cols="22"></textarea>
                    </p>
			        <span class="style1">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style1">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style1">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style1">
                      <select id="s1" name="gender" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>	
					<span class="style1">
			        <label for="pic">Select Profile Picture (required)</label>
                    </span>
			        <p class="style1">
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>				
			       <br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="ManagerLogin.jsp" class="style11">Back</a></p>
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
						<li><span></span><a href="index.html">Home</a></li>						
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
