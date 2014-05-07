<%@page import="com.nv.model.AdDataBean"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head><title>Hello :: Spring Application</title></head>
  <body>
  	<style>
		table,th,td
		{
		border:1px solid black;
		border-collapse:collapse;
		}
	</style>

    <h1><c:out value="Items JSP"/> - Spring Application</h1>
    <table width="100%">
	    <tr>
	    	<td width="5%">Group</td>
	    	<td width="5%">Category</td>
	    	<td width="15%">title</td>
	    	<td width="75%">Details</td>
	    </tr>   
    <c:forEach varStatus="status" items="${list}" var="adData">
    	<tr>
    		 <td><c:out value="${adData.group}"></c:out></td>
    		 <td><c:out value="${adData.category}"></c:out></td>
    		 <td><c:out value="${adData.title}"></c:out></td>
    		 <td><c:out value="${adData.details}"></c:out></td>    	
    </c:forEach>
    </table>    
    <p>Greetings.</p>
  </body>
</html>