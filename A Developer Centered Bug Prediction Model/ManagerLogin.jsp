<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Login</title>
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
				<h2 class="title"><a href="#">Welcome To Manager Login..</a></h2>
				<div class="entry">
				<p><img src="images/Alogin.png" alt="" width="216" height="139" /></p>
					<form name="s" method="post" action="ManagerAuthentication.jsp" onsubmit="return valid()" >
				    <table width="464" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="164" height="46" align="center"><span class="style34 style4">
                          <label for="name"><span class="style1">Select Company Name</span> </label>
                        </span> </td>
					  <td width="286"><select id="s2" name="cname" style="width:145px;" class="text">
                        <option>--Select--</option>
                        <option>Infosys</option>
					    <option>IBM</option>
						<option>Accenture</option>
						<option>Oracle</option>    
						<option>TCS</option>                    						
                      </select></td>
                      </tr>
					  <tr>
                        <td width="164" height="46" align="center"><span class="style34 style4">
                          <label for="name"><span class="style1">Username (required)</span></label>
                        </span> </td>
                        <td width="286"><input id="name" name="userid" class="text" /></td>
                      </tr>
                      <tr>
                        <td height="40" align="center"><span class="style34 style4 style1">Password (required)</span></td>
                        <td><input type="password" id="pass" name="pass" class="text" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                          <span class="style4"><b> New User?</b></span></span><a href="ManagerRegister.jsp" class="style2 style30"><b> Register </b></a></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
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
