<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="page">

	<table cellpadding="30" cellspacing="10" class="datatable">
		<tbody>
			<tr>
				<th>Date and Time</th>
				<th>Test Name</th>
				<th>Max. Marks</th>
				<th>Obtained Marks</th>
				<th>Percentage</th>
				<th>Details</th>
			</tr>
			<c:forEach items="${totaltest }" var="ol">

				<tr>
					<td>${ol.starttime }</td>
					<td>${ol.testname }</td>
					<td>${ol.totalmarks }</td>
					<td>${ol.obtainmarks }</td>
					<td>${ol.percentage } %</td>

					<td><a
						href="<c:url value="/resultdetails">
				<c:param name="testid" value="${ol.testid}"/>
					</c:url>">Details</a></td>
				</tr>
			</c:forEach>
	</table>


</div>