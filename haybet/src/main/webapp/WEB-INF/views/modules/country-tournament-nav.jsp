<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="collapse navbar-collapse navbar-ex1-collapse ct-nav" id="sidebar-nav">
<ul class="nav nav-pills nav-stacked">
<c:forEach items="${event.tournamnetsByCounty}" var="entry">
	<li>
		<a href="#" class="dropdown-toggle"> <i class="fa fa-angle-right drop-icon"></i> ${entry.key.nameRU}  </a>
		<ul class="submenu">
			<c:forEach items="${entry.value}" var="tournament">
				<li><a href="#" data-tournament-id="${tournament.id}"> ${tournament.nameRU} </a></li>
			</c:forEach>
		</ul>
	</li>
</c:forEach>
</ul>
</div>
