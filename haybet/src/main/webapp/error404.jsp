<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>


<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>ERROR 404 - HAYBET</title>
 
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
<%@include file="WEB-INF/views/modules/header-navbar.jsp" %>



		<div id="page-wrapper" class="container nav-small">
			<div class="row">
				<%@include file="WEB-INF/views/modules/nav-col.jsp" %>
				<div id="content-wrapper" class="email-inbox-wrapper">



					<div style="opacity: 1;" class="row">
						<div class="col-lg-12">
							<div id="error-box">
								<div class="row">
									<div class="col-xs-12" style="min-height: 900px;">
										<div id="error-box-inner">
											<img src="<c:url value="/resources/img/error-404-v2.png"/>" alt="Have you seen this page?">
										</div>
										<h1>ERROR 404</h1>
										<p>
											Page not found.<br> If you find this page, let us know.
										</p>
										<p>
											Go back to <a href="<c:url value="/" />">homepage</a>.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>


					<footer id="footer-bar" class="row hidden-md hidden-lg">
						<p id="footer-copyright" class="col-xs-12">Powered by Cube Theme.</p>
					</footer>
				</div>
			</div>
		</div>
<%-- <%@include file="WEB-INF/views/modules/config-tool.jsp" %> --%>
</div>	
		

<script src="<c:url value="/resources/js/demo-skin-changer.js"/>"></script>  
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nanoscroller.min.js"/>"></script>
<script src="<c:url value="/resources/js/demo.js"/>"></script>  
 
 
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="<c:url value="/resources/js/pace.min.js"/>"></script>

</body>

</html>