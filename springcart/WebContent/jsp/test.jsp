<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
$(document).ready(function(){
    $('textarea').autosize();   
});
	function myFunction() {
		if (document.pressed == 'Next') {
			document.myForm.action = 'next';
			setTime();

		} else if (document.pressed == 'Previous') {
			document.myForm.action = 'previous';
			setTime();
		} else if (document.pressed == 'Submit') {
			document.myForm.action = 'submit';
		} else if (document.pressed == 'Summary') {
			document.myForm.action = 'summary';
			setTime();
		}
	}
	function reEnable() {
		return true;
	}
</script>
<script type="text/javascript">
	function settimer() {
		var min = document.forms["myForm"]["min"].value;
		var sec = document.forms["myForm"]["sec"].value;
		if (sec < 10 && sec.length != 2)
			sec = '0' + sec;
		if (min < 10 && min.length != 2)
			min = '0' + min;
		time = (min + ":" + sec);
		var x = document.getElementById("timer");
		x.innerHTML = time;
	}
	setInterval(function() {
		var timer = $("#timer").html();
		timer = timer.split(':');
		var min = timer[0];
		var sec = timer[1];
		sec -= 1;
		
		
		if (sec < 0 && min != 0) {
			min -= 1;
			sec = 59;
		} else if (sec < 10 && sec.length != 2)
			sec = '0' + sec;
		if (min < 10 && min.length != 2)
			min = '0' + min;
		if(min==00&& sec==00)
			{
				alert("Time is Over");
				$("#submit").click();
			}
		
		$("#timer").html(min + ':' + sec);
	}, 1000);

	function setTime() {
		var timer = $("#timer").html();
		timer = timer.split(':');
		var min = timer[0];
		var sec = timer[1];
		document.forms["myForm"]["min"].value = min;
		document.forms["myForm"]["sec"].value = sec;
		
	}
</script>
 <script>
window.location.hash="";
window.location.hash="";
window.onhashchange=function(){window.location.hash="";}
</script>
	<form:form action="#" modelAttribute="viewQuestionBean" name="myForm"
		onsubmit="return myFunction()">
		<form:hidden path="min" id="hhhhh" />
		<form:hidden path="sec" id="iii" />
		<form:hidden path="dispqnid" />
		<form:hidden path="qnid" />
		<table width="100%" border="0" cellpadding="5" cellspacing="0">
			<tr>
				<td>Time remaining: <span id="timer"></span></td>
				<td>Question No. &nbsp; ${viewQuestionBean.dispqnid}</td>
				<td align="center"><form:checkbox path="review" /> &nbsp;Mark
					as Review</td>
			</tr>
		</table>
		<br>
		<textarea rows="6" cols="150" readonly="readonly" id="textarea">${viewQuestionBean.question}</textarea>
		<br>
		<br>
		<table>
			<tr>
				<th width="3%">1.</th>
				<td width="4%"><form:radiobutton path="selectedOption"
						value="optiona" /></td>
				<td>${viewQuestionBean.optiona}</td>
			</tr>
			<tr>
				<th width="3%">2.</th>
				<td width="4%"><form:radiobutton path="selectedOption"
						value="optionb" /></td>
				<td>${viewQuestionBean.optionb}</td>
			</tr>
			<tr>
				<th width="3%">3.</th>
				<td width="4%"><form:radiobutton path="selectedOption"
						value="optionc" /></td>
				<td>${viewQuestionBean.optionc}</td>
			</tr>
			<tr>
				<th width="3%">4.</th>
				<td width="4%"><form:radiobutton path="selectedOption"
						value="optiond" /></td>
				<td>${viewQuestionBean.optiond}</td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="5" cellspacing="0">
			<tr>
				<td><c:choose>
						<c:when
							test="${viewQuestionBean.dispqnid==1||viewQuestionBean.dispqnid==totalquestions }">
							<c:if test="${viewQuestionBean.dispqnid==1}">

								<input type="submit" value="Next" name="next" id="next"
									onclick="document.pressed=this.value" class="send_button1">
							</c:if>
							<c:if test="${viewQuestionBean.dispqnid==totalquestions}">
								<input type="submit" value="Previous" name="previous"
									id="previous" onclick="document.pressed=this.value"
									class="send_button1">
							</c:if>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Previous" name="previous"
								id="previous" onclick="document.pressed=this.value"
								class="send_button1">
							<input type="submit" value="Next" name="next" id="next"
								onclick="document.pressed=this.value" class="send_button1">
						</c:otherwise>
					</c:choose></td>
				<td align="right"><input type="submit" value="Summary"
					name="summary" onclick="document.pressed=this.value"
					class="send_button1"> <input type="submit" value="Submit"
					name="submit" onclick="document.pressed=this.value"
					class="send_button1" id="submit"></td>
		</table>
	</form:form>
<script type="text/javascript">settimer();</script>