<%@taglib uri="http://www.springframework.org/tags" prefix="form1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<script>
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
</script>



<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Registration</title>
</head>
<div class="page">
	<form:form name="myForm" action="register"
		onsubmit="return validateForm()" method="post"
		modelAttribute="studentbean">
		<table id=register>

			<!----- Name ---------------------------------------------------------->
			<tr>
				<td style="color: red;">${message}</td>
			</tr>
			<tr>
				<td><b>USERNAME</b></td>
				<td height="30"><form:input type="text" path="name" />max 30
					characters (a-z and A-Z)</td>
			</tr>

			<!----- Email Id ---------------------------------------------------------->
			<tr>
				<td><b>EMAIL ID</b></td>
				<td height="30"><form:input type="text" path="email" /></td>
			</tr>

			<!----- Password ---------------------------------------------------------->
			<tr>
				<td><b>Password</b></td>
				<td height="30"><input type="password" name="password" /></td>
			</tr>

			<!----- Confirm Password---------------------------------------------------------->
			<tr>
				<td><b>Confirm Password</b></td>
				<td height="30"><input type="password" name="confirmPassword" /></td>
			</tr>
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
				<td><input type="reset" value="Reset" class="send_button" /> <input
					type="submit" value="Submit" class="send_button" /></td>
			</tr>
		</table>
	</form:form>
</div>