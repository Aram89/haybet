<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="main-box clearfix">
	<header class="main-box-header clearfix">
		<h2 class="pull-left">Last bets</h2>
		<div class="filter-block pull-right">
			<a href="<c:url value="/user-bets"/>" class="btn btn-primary pull-right"> <!-- -<i class="fa fa-eye fa-lg"></i> --> View all bets </a>
		</div>
	</header>
	<div class="main-box-body clearfix">
		<div class="table-responsive clearfix">
			<%@include file="../modules/bets.jsp" %>
		</div>
	</div>
</div>
