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
							<div id="email-box" class="clearfix">
								<div class="row">
									<div class="col-lg-12">
										<div id="email-header-mobile"
											class="visible-xs visible-sm clearfix">
											<div id="email-header-title-mobile" class="pull-left">
												<i class="fa fa-inbox"></i> Inbox
											</div>
											<a href="email-compose.html"
												class="btn btn-success email-compose-btn pull-right"> <i
												class="fa fa-pencil-square-o"></i> Compose email
											</a>
										</div>
										<header id="email-header" class="clearfix">
											<div id="email-header-title" class="visible-md visible-lg">
												<i class="fa fa-inbox"></i> Inbox
											</div>
											<div id="email-header-tools">
												<div class="btn-group">
													<button data-toggle="dropdown"
														class="btn btn-primary dropdown-toggle has-tooltip"
														type="button" title="Select">
														<i class="fa fa-square-o"></i> <span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a href="#">All</a></li>
														<li><a href="#">None</a></li>
														<li><a href="#">Read</a></li>
														<li><a href="#">Unread</a></li>
														<li><a href="#">Starred</a></li>
														<li><a href="#">Unstarred</a></li>
													</ul>
												</div>
												<div class="btn-group">
													<button class="btn btn-primary" type="button"
														title="Refresh" data-toggle="tooltip"
														data-placement="bottom">
														<i class="fa fa-refresh"></i>
													</button>
													<button class="btn btn-primary" type="button" title="Spam"
														data-toggle="tooltip" data-placement="bottom">
														<i class="fa fa-exclamation-circle"></i>
													</button>
													<button class="btn btn-primary" type="button" title="Erase"
														data-toggle="tooltip" data-placement="bottom">
														<i class="fa fa-trash-o"></i>
													</button>
												</div>
												<div class="btn-group">
													<button data-toggle="dropdown"
														class="btn btn-primary dropdown-toggle has-tooltip"
														type="button" title="Labels">
														<i class="fa fa-tag"></i> <span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a href="#"><i class="fa fa-circle green"></i>
																Work</a></li>
														<li><a href="#"><i class="fa fa-circle red"></i>
																Home</a></li>
														<li><a href="#"><i class="fa fa-circle yellow"></i>
																Personal</a></li>
														<li><a href="#"><i class="fa fa-circle purple"></i>
																Documents</a></li>
													</ul>
												</div>
											</div>
											<div id="email-header-pagination" class="pull-right">
												<div class="btn-group pagination pull-right">
													<button class="btn btn-primary" type="button"
														title="Previous" data-toggle="tooltip"
														data-placement="bottom">
														<i class="fa fa-chevron-left"></i>
													</button>
													<button class="btn btn-primary" type="button" title="Next"
														data-toggle="tooltip" data-placement="bottom">
														<i class="fa fa-chevron-right"></i>
													</button>
												</div>
												<div class="num-items pull-right hidden-xs">1-50 from
													5,912</div>
											</div>
										</header>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-3">
										<div id="game-navigation" class="game-nav-nano">
											<div class="game-nav-nano-content">
												<%@include file="modules/country-tournament-nav.jsp" %>
											</div>
										</div>
											<!-- <a href="email-compose.html"
													class="btn btn-success email-compose-btn"> <i
													class="fa fa-pencil-square-o"></i> Compose email
												</a>
												
												
												
												
												
												
												
												
												
												
												
												<ul id="email-nav-items" class="clearfix">
													<li class="active"><a href="#"> <i
															class="fa fa-inbox"></i> Inbox <span
															class="label label-primary pull-right">83</span>
													</a></li>
													<li><a href="#"> <i class="fa fa-star"></i>
															Starred
													</a></li>
													<li><a href="#"> <i class="fa fa-pencil"></i>
															Drafts
													</a></li>
													<li><a href="#"> <i class="fa fa-envelope"></i>
															Sent <span class="label label-default pull-right">11</span>
													</a></li>
													<li><a href="#"> <i class="fa fa-trash-o"></i>
															Trash <span class="label label-default pull-right">1,292</span>
													</a></li>
												</ul>
												<div id="email-nav-labels-wrapper">
													<div class="email-nav-headline">Labels</div>
													<ul id="email-nav-labels" class="clearfix">
														<li><a href="#"> <i class="fa fa-circle emerald"></i>
																Important
														</a></li>
														<li><a href="#"> <i class="fa fa-circle red"></i>
																Home
														</a></li>
														<li><a href="#"> <i class="fa fa-circle green"></i>
																Work
														</a></li>
														<li><a href="#"> <i class="fa fa-circle yellow"></i>
																Personal
														</a></li>
														<li><a href="#"> <i class="fa fa-circle purple"></i>
																Documents
														</a></li>
													</ul>
												</div>
											-->
											
									</div>
									<div class="col-sm-6">
										<div id="game-content"  class="game-content-nano">
											<div class="game-content-nano-content">
											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<div id="bet-content"  class="game-content-nano">
											<div class="game-content-nano-content game-bet-content">
											
											</div>
										</div>
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