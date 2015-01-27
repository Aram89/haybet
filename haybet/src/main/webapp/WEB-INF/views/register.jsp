<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page session="true" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>





<html>
    <head>
    </head>
    <body>
        <h3>Welcome To Virtual bettings</h3>
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
                    <td><label for="email">email: </label> </td>
					<td><form:input path="email" id="email"/></td>
					<form:errors path="email" cssClass="error" ></form:errors>
                </tr>                
                <tr>
                    <td><input type="submit" value="register"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>