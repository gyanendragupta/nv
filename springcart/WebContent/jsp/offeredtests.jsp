<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="page">
	<div class="pmsg" style="text-align: center;">Offered Tests</div>
	<table cellpadding="30" cellspacing="10" class="datatable">
		<tbody>
			<tr>
				<th>Test Name</th>
				<th>Test Description</th>
				<th>Subject Name</th>
				<th>Duration</th>
				<th>Total Questions</th>
				<th>Take Test</th>
			</tr>
			<c:forEach items="${offeredlist }" var="ol">

				<tr>
					<td>${ol.testname }</td>
					<td>${ol.testdesc }</td>
					<td>${ol.subjectname }</td>
					<td>${ol.duration }</td>
					<td>${ol.totalquestions }</td>
					<td><a
						href="<c:url value="/testhome">
				<c:param name="testid" value="${ol.testid}"/>
				</c:url>">TakeTest</a></td>
				</tr>
			</c:forEach>
	</table>
	</div>