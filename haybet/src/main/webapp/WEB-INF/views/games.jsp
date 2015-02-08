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


</head>
<body>
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
									<div class="col-lg-12">
										<div id="email-navigation" class="email-nav-nano hidden-xs hidden-sm">
											<div class="email-nav-nano-content">
											<%@include file="modules/country-tournament-nav.jsp" %>
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
										</div>
										<div id="email-content" class="email-content-nano">
											<div class="email-content-nano-content">
												<ul id="email-list">
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-1" /> <label
																	for="m-checkbox-1"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Mila Kunis</div>
														<div class="message">
															<span class="label label-success">Work</span> <span
																class="subject">Like your new movie -</span> <span
																class="body">Hi beauty, I watched your movies
																last night.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">9:34 am</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-2" /> <label
																	for="m-checkbox-2"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Robert Downey Jr.</div>
														<div class="message">
															<span class="subject">Happy birthday -</span> <span
																class="body">I wish you all the best.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 14</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-3" /> <label
																	for="m-checkbox-3"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Ryan Gosling</div>
														<div class="message">
															<span class="subject">(no subject) -</span> <span
																class="body">How you doing? Answer The term 'How
																are you doing" means...</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 11</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-4"
																	checked="checked" /> <label for="m-checkbox-4"></label>
															</div>
														</div>
														<div class="star">
															<a class="starred"></a>
														</div>
														<div class="name">Mila Kunis</div>
														<div class="message">
															<span class="label label-primary">Important</span> <span
																class="subject">Like your new movie -</span> <span
																class="body">Hi beauty, I watched your movies
																last night and really...</span>
														</div>
														<div class="meta-info">
															<span class="date">9:34 am</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-8" /> <label
																	for="m-checkbox-8"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Robert Downey Jr.</div>
														<div class="message">
															<span class="subject">Happy birthday -</span> <span
																class="body">I wish you all the best.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 14</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-5" /> <label
																	for="m-checkbox-5"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Emma Watson</div>
														<div class="message">
															<span class="label label-danger">Personal</span> <span
																class="subject">Meet me for coffee -</span> <span
																class="body">Hi Scarlet, we should meet tomorrow.
																Emma.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 10</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-6" /> <label
																	for="m-checkbox-6"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Angelina Jolie</div>
														<div class="message">
															<span class="label label-success">Work</span> <span
																class="subject">Wedding invitation -</span> <span
																class="body">I would like to invite to our secret
																wedding with Brad.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 08</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-9" /> <label
																	for="m-checkbox-9"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Ryan Gosling</div>
														<div class="message">
															<span class="subject">(no subject) -</span> <span
																class="body">How you doing? Answer The term 'How
																are you doing" means...</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 11</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-7" /> <label
																	for="m-checkbox-7"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Adriana Lima</div>
														<div class="message">
															<span class="subject">New Victoria secret
																collection -</span> <span class="body">Check it out.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 02</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-10"
																	checked="checked" /> <label for="m-checkbox-10"></label>
															</div>
														</div>
														<div class="star">
															<a class="starred"></a>
														</div>
														<div class="name">Mila Kunis</div>
														<div class="message">
															<span class="label label-primary">Important</span> <span
																class="subject">Like your new movie -</span> <span
																class="body">Hi beauty, I watched your movies
																last night and really...</span>
														</div>
														<div class="meta-info">
															<span class="date">9:34 am</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-11" /> <label
																	for="m-checkbox-11"></label>
															</div>
														</div>
														<div class="star">
															<a class="starred"></a>
														</div>
														<div class="name">Emma Watson</div>
														<div class="message">
															<span class="subject">Meet me for coffee -</span> <span
																class="body">Hi Scarlet, we should meet tomorrow.
																Emma.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 10</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-14" /> <label
																	for="m-checkbox-14"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Robert Downey Jr.</div>
														<div class="message">
															<span class="subject">Happy birthday -</span> <span
																class="body">I wish you all the best.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 14</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-13" /> <label
																	for="m-checkbox-13"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Adriana Lima</div>
														<div class="message">
															<span class="subject">New Victoria secret
																collection -</span> <span class="body">Check it out.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 02</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-12" /> <label
																	for="m-checkbox-12"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Angelina Jolie</div>
														<div class="message">
															<span class="label label-primary">Important</span> <span
																class="subject">Wedding invitation -</span> <span
																class="body">I would like to invite to our secret
																wedding with Brad.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 08</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-16"
																	checked="checked" /> <label for="m-checkbox-16"></label>
															</div>
														</div>
														<div class="star">
															<a class="starred"></a>
														</div>
														<div class="name">Mila Kunis</div>
														<div class="message">
															<span class="subject">Like your new movie -</span> <span
																class="body">Hi beauty, I watched your movies
																last night and really...</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">9:34 am</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-15" /> <label
																	for="m-checkbox-15"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Ryan Gosling</div>
														<div class="message">
															<span class="subject">(no subject) -</span> <span
																class="body">How you doing? Answer The term 'How
																are you doing" means...</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 11</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-18" /> <label
																	for="m-checkbox-18"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Angelina Jolie</div>
														<div class="message">
															<span class="subject">Wedding invitation -</span> <span
																class="body">I would like to invite to our secret
																wedding with Brad.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 08</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-17" /> <label
																	for="m-checkbox-17"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Emma Watson</div>
														<div class="message">
															<span class="subject">Meet me for coffee -</span> <span
																class="body">Hi Scarlet, we should meet tomorrow.
																Emma.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 10</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-2" /> <label
																	for="m-checkbox-2"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Robert Downey Jr.</div>
														<div class="message">
															<span class="subject">Happy birthday -</span> <span
																class="body">I wish you all the best.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 14</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-3" /> <label
																	for="m-checkbox-3"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Ryan Gosling</div>
														<div class="message">
															<span class="subject">(no subject) -</span> <span
																class="body">How you doing? Answer The term 'How
																are you doing" means...</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 11</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-16"
																	checked="checked" /> <label for="m-checkbox-16"></label>
															</div>
														</div>
														<div class="star">
															<a class="starred"></a>
														</div>
														<div class="name">Mila Kunis</div>
														<div class="message">
															<span class="subject">Like your new movie -</span> <span
																class="body">Hi beauty, I watched your movies
																last night and really...</span>
														</div>
														<div class="meta-info">
															<span class="date">9:34 am</span>
														</div>
													</li>
													<li class="unread clickable-row"
														data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-14" /> <label
																	for="m-checkbox-14"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Robert Downey Jr.</div>
														<div class="message">
															<span class="subject">Happy birthday -</span> <span
																class="body">I wish you all the best.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 14</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-13" /> <label
																	for="m-checkbox-13"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Adriana Lima</div>
														<div class="message">
															<span class="subject">New Victoria secret
																collection -</span> <span class="body">Check it out.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 02</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-12" /> <label
																	for="m-checkbox-12"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Angelina Jolie</div>
														<div class="message">
															<span class="label label-primary">Important</span> <span
																class="subject">Wedding invitation -</span> <span
																class="body">I would like to invite to our secret
																wedding with Brad.</span>
														</div>
														<div class="meta-info">
															<span class="date">Sep 08</span>
														</div>
													</li>
													<li class="clickable-row" data-href="email-detail.html">
														<div class="chbox">
															<div class="checkbox-nice">
																<input type="checkbox" id="m-checkbox-17" /> <label
																	for="m-checkbox-17"></label>
															</div>
														</div>
														<div class="star">
															<a></a>
														</div>
														<div class="name">Emma Watson</div>
														<div class="message">
															<span class="subject">Meet me for coffee -</span> <span
																class="body">Hi Scarlet, we should meet tomorrow.
																Emma.</span>
														</div>
														<div class="meta-info">
															<a href="#" class="attachment"> <i
																class="fa fa-paperclip"></i>
															</a> <span class="date">Sep 10</span>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<footer id="footer-bar" class="row hidden-md hidden-lg">
						<p id="footer-copyright" class="col-xs-12">Powered by Cube
							Theme.</p>
					</footer>
				</div>
			</div>
		</div>
<%@include file="modules/config-tool.jsp" %>
</div>	
		
		