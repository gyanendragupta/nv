
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="http://www.springframework.org/tags" prefix="form1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<style type="text/css">
a {
	text-decoration: none;
	color: #00c6ff;
}

.container {
	width: 960px;
	margin: 0 auto;
	overflow: hidden;
}

#content {
	float: left;
	width: 100%;
}

.post {
	margin: 0 auto;
	padding-bottom: 50px;
	float: left;
	width: 960px;
}

.btn-sign {
	margin-bottom: 20px;
	border-radius: 5px;
	background: -webkit-gradient(linear, left top, left bottom, from(#00c6ff),
		to(#018eb6));
	background: -o-linear-gradient(top, #00c6ff, #018eb6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#00c6ff',
		EndColorStr='#018eb6');
	background: -moz-linear-gradient(center top, #00C6FF, #018EB6) repeat
		scroll 0 0 transparent;
	border-radius: 5px 5px 5px 5px;
	color: #FFFFFF;
	font-size: 20px;
	margin: -52px auto;
	padding: 5px;
	text-align: center;
	text-transform: uppercase;
	width: 193px;
}

.btn-sign a {
	color: #fff;
	text-shadow: 0 1px 2px #161616;
}

#mask {
	display: none;
	background: #000;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 10;
	width: 100%;
	height: 100%;
	opacity: 0.8;
	z-index: 999;
}

.login-popup {
	display: none;
	background: #333;
	padding: 10px;
	border: 2px solid #ddd;
	float: left;
	font-size: 1.2em;
	position: fixed;
	top: 50%;
	left: 50%;
	z-index: 99999;
	box-shadow: 0px 0px 20px #999;
	-moz-box-shadow: 0px 0px 20px #999; /* Firefox */
	-webkit-box-shadow: 0px 0px 20px #999; /* Safari, Chrome */
	border-radius: 3px 3px 3px 3px;
	-moz-border-radius: 3px; /* Firefox */
	-webkit-border-radius: 3px; /* Safari, Chrome */
}

img.btn_close {
	float: right;
	margin: -28px -28px 0 0;
}

fieldset {
	border: none;
}

form.signin .textbox label {
	display: block;
	padding-bottom: 7px;
}

form.signin .textbox span {
	display: block;
}

form.signin p,form.signin span {
	color: #999;
	font-size: 11px;
	line-height: 18px;
}

form.signin .textbox input {
	background: #666666;
	border-bottom: 1px solid #333;
	border-left: 1px solid #000;
	border-right: 1px solid #333;
	border-top: 1px solid #000;
	color: #fff;
	border-radius: 3px 3px 3px 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	font: 13px Arial, Helvetica, sans-serif;
	padding: 6px 6px 4px;
	width: 200px;
}

form.signin input:-moz-placeholder {
	color: #bbb;
	text-shadow: 0 0 2px #000;
}

form.signin input::-webkit-input-placeholder {
	color: #bbb;
	text-shadow: 0 0 2px #000;
}

.button {
	background: -moz-linear-gradient(center top, #f3f3f3, #dddddd);
	background: -webkit-gradient(linear, left top, left bottom, from(#f3f3f3),
		to(#dddddd));
	background: -o-linear-gradient(top, #f3f3f3, #dddddd);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f3f3f3',
		EndColorStr='#dddddd');
	border-color: #000;
	border-width: 1px;
	border-radius: 4px 4px 4px 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	color: #333;
	cursor: pointer;
	display: inline-block;
	padding: 6px 6px 4px;
	margin-top: 10px;
	font: 12px;
	width: 214px;
}

.button:hover {
	background: #ddd;
}
</style>
<script type="text/javascript">
function validateForm()
{
	var x=document.forms["myForm"]["name"].value;
	if (x==null || x=="")
	  {
	  alert("Name must be filled out");
	  return false;
	  }
	
	var x=document.forms["myForm"]["email"].value;
	if(x==null || x=="")
	{
	alert("Email is required");
	return false;
	}
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
var x=document.forms["myForm"]["password"].value;
if(x.length<6)
{
	alert("Password should be of minimum 6 characters");
	return false;
}
var x1=document.forms["myForm"]["confirmPassword"].value;
if(!(x1==x))
{
	alert("Password should be matched");
	return false;
}
var x=document.forms["myForm"]["contactNo"].value;
if (x==null || x=="")
  {
  alert("Contact number must be filled out");
  return false;
  }

var x=document.forms["myForm"]["collegeName"].value;
if (x==null || x=="")
  {
  alert("College name must be filled out");
  return false;
  }
var x=document.forms["myForm"]["city"].value;
if (x==null || x=="")
  {
  alert("City must be filled out");
  return false;
  }
var x=document.forms["myForm"]["pinCode"].value;
if (x==null || x=="")
  {
  alert("Pincode must be filled out");
  return false;
  }
}

$(document).ready(function() {
	$('a.login-window').click(function() {
		
		// Getting the variable's value from a link 
		var loginBox = $(this).attr('href');

		//Fade in the Popup and add close button
		$(loginBox).fadeIn(300);
		
		//Set the center alignment padding + border
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
	$('a.close, #mask').bind('click', function() { 
	  $('#mask , .login-popup').fadeOut(300 , function() {
		$('#mask').remove();  
	}); 
	return false;
	});
});

function doAjaxPost() {  
    
    
    var oldpassword = $('#oldpassword').val();
    var newpassword = $('#newpassword').val();
    var confirmpassword = $('#confirmpassword').val();
    $.ajax({  
     type : "Post",   
     url : "changepassword",   
     data : "oldpassword=" + oldpassword + "&newpassword=" + newpassword + "&confirmpassword=" + confirmpassword,  
     success : function(response) {
    	 if(response==oldpassword)
    		 {
    		 	alert(response);
    		 	$("#oldpassword").val('');
    		 	$("#newpassword").val('');
    		 	$("#confirmpassword").val('');
    		 }
    	 else
    		 {
    		 	alert(response);
    		 	$("#oldpassword").val('');
    		 	$("#newpassword").val('');
    		 	$("#confirmpassword").val('');
    		 	$('a.close');
    		}
     },
     error : function(response) {  
      alert('Error: ' + response);   
      $("#oldpassword").val('');
	 	$("#newpassword").val('');
	 	$("#confirmpassword").val('');
	 	$('a.close');
     }
    });  
   }    
</script>
</head>
<body >
	<div class="page">
		<form:form name="myForm" action="updateprofile"
			onsubmit="return validateForm()" method="post"
			modelAttribute="studentBean">

			<table id=register>

				<!----- Name ---------------------------------------------------------->
				<tr>
					<td><b>NAME</b></td>
					<td height="30"><form:input type="text" path="name" />max 30
						characters (a-z and A-Z)</td>
				</tr>

				<!----- Email Id ---------------------------------------------------------->
				<tr>
					<td><b>EMAIL ID</b></td>
					<td height="30"><form:input type="text" path="email" /></td>
				</tr>

				<!----- Password ---------------------------------------------------------->
				<!-- 	<tr>
				<td><b>Password</b></td>
				<td height="30"><input type="password" name="password" /></td>
			</tr>

			--- Confirm Password--------------------------------------------------------
			<tr>
				<td><b>Confirm Password</b></td>
				<td height="30"><input type="password" name="confirmPassword" /></td>
			</tr> -->
				<!----- Mobile Number ---------------------------------------------------------->
				<tr>
					<td><b>Contact NO. </b></td>

					<td height="30"><form:input type="text" maxlength="10"
							path="contactNo" /> (10 digit number)</td>
				</tr>

				<!----- College Name ---------------------------------------------------------->
				<tr>
					<td><b>College Name</b></td>
					<td height="30"><form:input type="text" maxlength="50"
							path="collegeName" /></td>
				</tr>
				<!-- --------Address -->
				<tr>
					<td><b>ADDRESS </b></td>
					<td height="30"><form:textarea path="address" rows="3"
							cols="40" /></td>
				</tr>
				<!----- City ---------------------------------------------------------->
				<tr>
					<td><b>CITY </b></td>
					<td height="30"><form:input type="text" maxlength="30"
							path="city" /></td>
				</tr>
				<!----- Pin Code ---------------------------------------------------------->
				<tr>
					<td><b>PIN CODE </b></td>
					<td height="30"><form:input type="text" maxlength="6"
							path="pinCode" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" class="send_button" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	<div class="btn-sign">
		<a href="#login-box" class="login-window">Change Password</a>
	</div>
	<div id="login-box" class="login-popup">
		<a href="#" class="close"><img src="css/close_pop.png"
			class="btn_close" title="Close Window" alt="Close" /></a>
		<form method="post" class="signin" action="#">
			<fieldset class="textbox">
				<label class="username"> <span>Old Password</span> <input
					id="oldpassword" name="oldpassword" value="" type="password"
					onfocus="if(this.value!='') this.value='';" /></label> <label
					class="username"> <span>New Password</span> <input
					id="newpassword" name="newpassword" value="" type="password"
					onfocus="if(this.value!='') this.value='';" /></label> <label
					class="username"> <span>Confirm Password</span> <input
					id="confirmpassword" name="confirmpassword" value=""
					type="password" onfocus="if(this.value!='') this.value='';" /></label> <a
					href="#" class="close"><button class="submit button"
						type="button" onclick="doAjaxPost();">Change</button></a>
			</fieldset>
		</form>
	</div>
</body>
</html>