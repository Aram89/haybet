<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section id="col-left" class="col-left-nano">
	<div id="col-left-inner" class="col-left-nano-content">
		<div id="user-left-box"
			class="clearfix hidden-sm hidden-xs dropdown profile2-dropdown">
			<img alt="" src="<c:url value="/resources/img/samples/scarlet-159.png"/>" />
			<div class="user-box">
				<span class="name"> 
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"> Scarlett J. <i class="fa fa-angle-down"></i> </a>
					<ul class="dropdown-menu">
						<li><a href="user-profile.html"><i class="fa fa-user"></i>Profile</a></li>
						<li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i>Messages</a></li>
						<li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>
					</ul>
				</span>
				<span class="status"> <i class="fa fa-circle"></i> Online </span>
			</div>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
			<%@include file="navbar.jsp" %>
		</div>
	</div>
</section>
