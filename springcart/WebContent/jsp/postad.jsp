<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-AU">
	<head>
  		<title>Welcome to News & Views</title>
	</head>
	<body>
		<form id="default" action="submitAd" method="post">
		<div>
			Choose A category
			<input type="radio" name="category" value="1" checked="checked">General</input>
			<input type="radio" name="category" value="2" >Vehicle</input>
			<input type="radio" name="category" value="3" >Property</input>
			<input type="radio" name="category" value="4" >Household</input>
		</div>
		<div>
			Select A Group
			<input type="radio" name="group" value="1" checked="checked">CTL</input>
			<input type="radio" name="group" value="2">Nirupam Vatika</input>
			<input type="radio" name="group" value="3">TechM</input>
			<input type="radio" name="group" value="4">Infy</input>					
		</div>
		<div>
			<input name="title" value="title of your ad" size="50"/>
			details: <textarea name="details" form="default" rows="4" cols="50">Ant is working now</textarea>
			<input type="submit" value="submit"/>
			<input type="button" value="clear" onclick="javaScript:changeAction();"/>
		</div>
		
		<script type="JavaScript">
			alert("hello");
			function changeAction(){
				alert("Inside function");

			}
		</script>
					
		</form>
	</body>
</html>
