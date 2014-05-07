<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
function myFunction() {
	 if (document.pressed == 'Submit') {
		document.myForm.action = 'submit';
	} 
}
	function settimer() {

		var min = document.getElementById("min").value;
		var sec = document.getElementById("sec").value;
		if (sec < 10 && sec.length != 2)
			sec = '0' + sec;
		if (min < 10 && min.length != 2)
			min = '0' + min;
		time = (min + ":" + sec);
		var x = document.getElementById("timer");
		x.innerHTML = time;
	}
	setInterval(function() {
		var timer = document.getElementById("timer").innerHTML;
		timer = timer.split(':');
		var min = timer[0];
		var sec = timer[1];
		sec -= 1;
		if (min < 0)
			return;

		if (sec < 0 && min != 0) {
			min -= 1;
			sec = 59;
		} else if (sec < 10 && sec.length != 2)
			sec = '0' + sec;
		if (min < 10 && min.length != 2)
			min = '0' + min;
		time = (min + ":" + sec);
		var x = document.getElementById("timer");
		x.innerHTML = time;
	}, 1000);

	function setTime(dispqnid) {
		
		var timer = document.getElementById("timer").innerHTML;
		timer = timer.split(':');
		var min = timer[0];
		var sec = timer[1];
		 $.ajax({  
		     type : "Post",   
		     url : "change",   
		     data : "dispqnid=" + dispqnid + "&min=" + min + "&sec=" +sec ,  
		     success : function(data){
		    	 if(data && data == "Success")
		    		 document.location.href="returnfromsummary";
		    	 else 
		    		 alert(data + " Failed");
		     },
		 error:function(e)
		 {
			 alert(e);
		 }
		 });
	}
</script>

Time remaining:
<span id="timer"></span>
<div class="page">
	<div class="pmsg" style="text-align: center;">Offered Tests</div>
	<table cellpadding="30" cellspacing="10" class="datatable">
		<tbody>
			<tr>
				<th>Question No.</th>
				<th>Status</th>
				<th>Change</th>
			</tr>
			<form:hidden path="min" value="${min}" id="min" />
			<form:hidden path="sec" value="${sec}" id="sec" />
			<c:forEach items="${summary}" var="status">
				<tr>
					<td>${status.key}</td>
					<td>${status.value}</td>
					<td><a onclick="setTime(${status.key})" href="#">Change</a></td>
				</tr>

			</c:forEach>
			</table>
			<form:form action="#" modelAttribute="viewQuestionBean" name="myForm"
				onsubmit="return myFunction()">
				<table>
				<tr><td align="right"><input type="submit" value="Submit"
					name="submit" onclick="document.pressed=this.value"
					class="send_button1"></td></tr>
					</table>
			</form:form>
	
</div>
<script type="text/javascript">settimer();</script>


