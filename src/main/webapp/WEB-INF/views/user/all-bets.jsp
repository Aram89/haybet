<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>


<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>All Bets - HAYBET</title>
 
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap/bootstrap.min.css" />" />

<script src="<c:url value="/resources/js/demo-rtl.js" />"></script>


<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/font-awesome.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/nanoscroller.css" />" />

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/compiled/theme_styles.css" />" />




<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/daterangepicker.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/jquery-jvectormap-1.2.2.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/weather-icons.css" />" />

<link type="image/x-icon" href="<c:url value="/resources/img/favicon.png" />" rel="shortcut icon" />

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
		<script src="<c:url value="/resources/js/html5shiv.js" />"></script>
		<script src="<c:url value="/resources/js/respond.min.js" />"></script>
	<![endif]-->
</head>
<body class="theme-white pace-done">
<div id="theme-wrapper">
<%@include file="../modules/header-navbar.jsp" %>



		<div id="page-wrapper" class="container nav-small">
			<div class="row">
				<%@include file="../modules/nav-col.jsp" %>
				
				
				<div id="content-wrapper">


					<div class="row">
						<div class="col-lg-12">
							<div class="main-box clearfix">
								<header class="main-box-header clearfix">
									<h2 class="pull-left">All bets</h2>
								</header>
								<div class="main-box-body clearfix">
									<div class="table-responsive clearfix">
										<%@include file="../modules/bets.jsp" %>
									</div>
								</div>
							</div>	
						</div>
					</div>
				
					
					<%@include file="../modules/footer-bar.jsp" %>
				</div>
			</div>
		</div>
<%-- <%@include file="modules/config-tool.jsp" %> --%>
</div>	
		

<script src="<c:url value="/resources/js/demo-skin-changer.js"/>"></script>  
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nanoscroller.min.js"/>"></script>
<script src="<c:url value="/resources/js/demo.js"/>"></script>  
 
 
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="<c:url value="/resources/js/pace.min.js"/>"></script>
<script src="<c:url value="/resources/js/game-script.js"/>"></script>
 
</body>

</html>