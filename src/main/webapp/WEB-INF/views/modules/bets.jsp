<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table class="table table-hover">
	<thead>
		<tr>
			<th><span>Game Name</span></th>
			<th><span>Date</span></th>
			<th class="text-right"><span>Coefficient</span></th>
			<th class="text-center"><span>Status</span></th>
			<th class="text-right"><span>Amount</span></th>
			<!--  <th>&nbsp;</th> -->
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${bets}" var="userBet">
		<tr>
			<td><a href="#">${userBet.gameNameRu}</a></td>
			<td>${userBet.date}</td>
			<td class="text-right">${userBet.coefficient}</td>
			<td class="text-center"><span>${userBet.status}</span></td>
			<td class="text-right">${userBet.amount}</td>
			<!--<td class="text-center" style="width: 15%;"><a href="#"
				class="table-link"> <span class="fa-stack"> <i
						class="fa fa-square fa-stack-2x"></i> <i
						class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
				</span>
			</a></td> -->
		</tr>
		</c:forEach>
	</tbody>
</table>