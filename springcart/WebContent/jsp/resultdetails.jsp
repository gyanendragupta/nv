<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
 <script>
window.location.hash="";
window.location.hash="";
window.onhashchange=function(){window.location.hash="";}
</script>
</head>
<div class="page">
<center>
	<table cellpadding="20" cellspacing="30" border="0" 
		style="background: #ffffff url(images/page.gif); text-align: left; line-height: 20px;" >
		<tbody>
			<tr>
				<td colspan="2"><h3 style="color: #0000cc; text-align: center;">Test
						Summary</h3></td>
			</tr>
			<tr>
				<td colspan="2"><hr style="color: #ff0000; border-width: 4px;"></td>
			</tr>

			<tr>
				<td>Test Name</td>
				<td>${testdetail.testname}</td>
			</tr>
			<tr>
				<td>Test Description</td>
				<td>${testdetail.testdesc}</td>
			</tr>
			<tr>
				<td>Max. Marks</td>
				<td>${testdetail.totalmarks}</td>
			</tr>
			<tr>
				<td>Obtained Marks</td>
				<td>${testdetail.obtainmarks}</td>
			</tr>
			<tr>
				<td>Percentage</td>
				<td>${testdetail.percentage} %</td>
			</tr>
			<tr>
				<td colspan="2"><hr style="color: #ff0000; border-width: 2px;"></td>
			</tr>
			<tr>
				<td colspan="2"><h3 style="color: #0000cc; text-align: center;">Test
						Information in Detail</h3></td>
			</tr>
			<tr>
				<td colspan="2"><hr style="color: #ff0000; border-width: 4px;"></td>
			</tr>
		</tbody>
	</table>
	</center>
	<table cellpadding="30" cellspacing="10" class="datatable">
		<tbody>
			<tr>
				<th>Q. No</th>
				<th>Question</th>
				<th>Your Answer</th>
				<th>Score</th>
				<th>&nbsp;</th>
			</tr>
			
			<c:forEach items="${resultdetails }" var="ol">
				<tr>
					<td>${ol.dispqnid}</td>
					<td>${ol.question }</td>
					<td>${ol.selectedOption }</td>
					<c:choose>
					<c:when test="${ol.correct=='t'}">
						<td><img src="css/right.png"></td>
					</c:when>
					<c:when test="${ol.correct=='f'}">
						<td><img src="css/wrong.png"></td>
					</c:when> 
				</c:choose>
				</tr>	
			</c:forEach>
		</tbody>
	</table>
</div>