<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul class="nav nav-pills nav-stacked">
<c:forEach items="${countrys}" var="country">
	<li>
		<a href="#" class="dropdown-toggle"> ${country.nameRU} <i class="fa fa-angle-right drop-icon"></i> </a>
		<ul class="submenu">
			<c:forEach items="${country.tournaments}" var="tournament">
				<li><a href="#" data-tournament-id="${tournament.id}"> ${tournament.nameRU} </a></li>
			</c:forEach>
		</ul>
	</li>
</c:forEach>
</ul>
