<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul class="nav nav-pills nav-stacked">
<c:forEach items="${test.tournaments}" var="country">
	<li>
		<a href="#" class="dropdown-toggle"> <i class="fa fa-angle-right drop-icon"></i> ${country.nameRU}  </a>
<!-- 		<ul class="submenu"> -->
<%-- 			<c:forEach items="${country.tournaments}" var="tournament"> --%>
<%-- 				<li><a href="#" data-tournament-id="${tournament.id}"> ${tournament.nameRU} </a></li> --%>
<%-- 			</c:forEach> --%>
<!-- 		</ul> -->
	</li>
</c:forEach>
</ul>
