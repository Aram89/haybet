<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>


<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>HAYBET - INDEX</title>
 
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

<style type="text/css">
#email-navigation {
	width: 350px;
}
#email-content {
	margin-left: 365px;
}
</style>
</head>
<body class="theme-white pace-done">
<div id="theme-wrapper">
<%@include file="modules/header-navbar.jsp" %>



		<div id="page-wrapper" class="container nav-small">
			<div class="row">
				<%@include file="modules/nav-col.jsp" %>
				<div id="content-wrapper" class="email-inbox-wrapper">
					<div class="row">
						<div class="col-lg-12">
						
						
						</div>
					</div>
					<footer id="footer-bar" class="row hidden-md hidden-lg">
						<p id="footer-copyright" class="col-xs-12">Powered by Cube Theme.</p>
					</footer>
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
 
<script>
	$(document).ready(function() {
		$('#email-list li > .star > a').on('click', function() {
			$(this).toggleClass('starred');
		});
		
		$(".has-tooltip").each(function (index, el) {
			$(el).tooltip({
				placement: $(this).data("placement") || 'bottom'
			});
		});
		
		setHeightEmailContent();
		
		initEmailScroller();
		
		$(".clickable-row > div:not(.chbox,.star)").click(function(e) {
			if ((e.target instanceof HTMLAnchorElement) == true) {
				return;
			}
			
			var href = $(this).parent().data('href');
			
			if (href != '' && typeof href != 'undefined') {
				window.document.location = href;
			}
		});
	});
	
	$(window).smartresize(function(){
		setHeightEmailContent();
		
		initEmailScroller();
	});
	
	function setHeightEmailContent() {
		if ($( document ).width() >= 992) {
			var windowHeight = $(window).height();
			var staticContentH = $('#header-navbar').outerHeight() + $('#email-header').outerHeight();
			staticContentH += ($('#email-box').outerHeight() - $('#email-box').height());
	
			$('#game-content').css('height', windowHeight - staticContentH);
		}
		else {
			$('#game-content').css('height', '');
		}
	}
	
	function initEmailScroller() {
		if ($( document ).width() >= 992) {
			$('#game-navigation').nanoScroller({
		    	alwaysVisible: false,
		    	iOSNativeScrolling: false,
		    	preventPageScrolling: true,
		    	contentClass: 'game-nav-nano-content'
		    });
			
			$('#game-content').nanoScroller({
		    	alwaysVisible: false,
		    	iOSNativeScrolling: false,
		    	preventPageScrolling: true,
		    	contentClass: 'game-content-nano-content'
		    });
			
			/*$('#bet-content').nanoScroller({
		    	alwaysVisible: false,
		    	iOSNativeScrolling: false,
		    	preventPageScrolling: true,
		    	contentClass: 'game-bet-content'
		    });*/
		}
	}
	</script>
</body>

</html>