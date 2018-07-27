<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
    <h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>
    
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}"/>
        <table>
        	<thead>
        		<tr>
        			<td>Name</td>
        			<td>Action</td>
        		</tr>
        	</thead>
        	<tbody>
        		<c:forEach items="${ allUsers }" var="thisUser">
        		<tr>
        			<td><c:out value="${ thisUser[0].username }"/></td>
        			<td>
        				<c:choose>
        					<c:when test="${ thisUser[1].name == 'ROLE_ADMIN'}">
        						<p>Admin</p>
        					</c:when>
        					<c:otherwise>
        						<p><a href="">Delete</a> <a href="">Make admin</a></p>
        					</c:otherwise>
        				</c:choose>
        			</td>
        			
        		</tr>
        		</c:forEach>
        	</tbody>
        </table>
        <input type="submit" value="Logout!" />
    </form>
</body>
</html>