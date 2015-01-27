<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page session="true" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>Custom Login Page</title>
</head>
<body>
<h3>Custom Login Page</h3>
<form:form method="POST"  modelAttribute="user">
             <table>
                <tr>
                    <td><label for="nickName">Login: </label> </td>
					<td><form:input path="nickName" id="nickName"/></td>
					<form:errors path="nickName" cssClass="error" ></form:errors>
				</tr>
                <tr>
                    <td><label for="password">Password: </label> </td>
					<td><form:input path="password" id="password"/></td>
					<form:errors path="password" cssClass="error" ></form:errors>
                </tr> 
                         
                <tr>
                    <td><input type="submit" value="login"/></td>
                </tr>
            </table>
        </form:form> 

</body>
</html>