<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


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
<div id="page-wrapper" class="container">
<div class="row">
<div id="nav-col">
<section id="col-left" class="col-left-nano">
<div id="col-left-inner" class="col-left-nano-content">
<div id="user-left-box" class="clearfix hidden-sm hidden-xs dropdown profile2-dropdown">
<img alt="" src="img/samples/scarlet-159.png"/>
<div class="user-box">
<span class="name">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">
Scarlett J.
<i class="fa fa-angle-down"></i>
</a>
<ul class="dropdown-menu">
<li><a href="user-profile.html"><i class="fa fa-user"></i>Profile</a></li>
<li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
<li><a href="#"><i class="fa fa-envelope-o"></i>Messages</a></li>
<li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>
</ul>
</span>
<span class="status">
<i class="fa fa-circle"></i> Online
</span>
</div>
</div>
<div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
<ul class="nav nav-pills nav-stacked">
<li class="nav-header nav-header-first hidden-sm hidden-xs">
Navigation
</li>
<li class="active">
<a href="index-2.html">
<i class="fa fa-dashboard"></i>
<span>Dashboard</span>
<span class="label label-primary label-circle pull-right">28</span>
</a>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-table"></i>
<span>Tables</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="tables.html">
Simple
</a>
</li>
<li>
<a href="tables-advanced.html">
Advanced
</a>
</li>
<li>
<a href="users.html">
Users
</a>
</li>
</ul>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-envelope"></i>
<span>Email</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="email-inbox.html">
Inbox
</a>
</li>
<li>
<a href="email-detail.html">
Detail
</a>
</li>
<li>
<a href="email-compose.html">
Compose
</a>
</li>
</ul>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-bar-chart-o"></i>
<span>Graphs</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="graphs-morris.html">
Morris &amp; Mixed
</a>
</li>
<li>
<a href="graphs-flot.html">
Flot
</a>
</li>
<li>
<a href="graphs-dygraphs.html">
Dygraphs
</a>
</li>
<li>
<a href="graphs-xcharts.html">
xCharts
</a>
</li>
</ul>
</li>
<li>
<a href="widgets.html">
<i class="fa fa-th-large"></i>
<span>Widgets</span>
<span class="label label-success pull-right">New</span>
</a>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-copy"></i>
<span>Pages</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="calendar.html">
Calendar
</a>
</li>
<li>
<a href="gallery.html">
Gallery
</a>
</li>
<li>
<a href="gallery-v2.html">
Gallery v2
</a>
</li>
<li>
<a href="pricing.html">
Pricing
</a>
</li>
<li>
<a href="projects.html">
Projects
</a>
</li>
<li>
<a href="team-members.html">
Team Members
</a>
</li>
<li>
<a href="timeline.html">
Timeline
</a>
</li>
<li>
<a href="timeline-grid.html">
Timeline Grid
</a>
</li>
<li>
<a href="user-profile.html">
User Profile
</a>
</li>
<li>
<a href="search.html">
Search Results
</a>
</li>
<li>
<a href="invoice.html">
Invoice
</a>
</li>
<li>
<a href="intro.html">
Tour Layout
</a>
</li>
</ul>
</li>
<li class="nav-header hidden-sm hidden-xs">
Components
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-edit"></i>
<span>Forms</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="form-elements.html">
Elements
</a>
</li>
<li>
<a href="x-editable.html">
X-Editable
</a>
</li>
<li>
<a href="form-wizard.html">
Wizard
</a>
</li>
<li>
<a href="form-wizard-popup.html">
Wizard popup
</a>
</li>
<li>
<a href="form-wysiwyg.html">
WYSIWYG
</a>
</li>
<li>
<a href="form-summernote.html">
WYSIWYG Summernote
</a>
</li>
<li>
<a href="form-ckeditor.html">
WYSIWYG CKEditor
</a>
</li>
<li>
<a href="form-dropzone.html">
Multiple File Upload
</a>
</li>
</ul>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-desktop"></i>
<span>UI Kit</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="ui-elements.html">
Elements
</a>
</li>
<li>
<a href="notifications.html">
Notifications &amp; Alerts
</a>
</li>
<li>
<a href="modals.html">
Modals
</a>
</li>
<li>
<a href="video.html">
Video
</a>
</li>
<li>
<a href="#" class="dropdown-toggle">
Icons
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="icons-awesome.html">
Awesome Icons
</a>
</li>
<li>
<a href="icons-halflings.html">
Halflings Icons
</a>
</li>
</ul>
</li>
<li>
<a href="ui-nestable.html">
Nestable List
</a>
</li>
<li>
<a href="typography.html">
Typography
</a>
</li>
<li>
<a href="#" class="dropdown-toggle">
3 Level Menu
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="#">
3rd Level
</a>
</li>
<li>
<a href="#">
3rd Level
</a>
</li>
<li>
<a href="#">
3rd Level
</a>
</li>
</ul>
</li>
</ul>
</li>
<li>
<a href="maps.html">
<i class="fa fa-map-marker"></i>
<span>Google Maps</span>
<span class="label label-danger pull-right">Updated</span>
</a>
</li>
<li>
<a href="#" class="dropdown-toggle">
<i class="fa fa-file-text-o"></i>
<span>Extra pages</span>
<i class="fa fa-angle-right drop-icon"></i>
</a>
<ul class="submenu">
<li>
<a href="faq.html">
FAQ
</a>
</li>
<li>
<a href="emails.html">
Email Templates
</a>
</li>
<li>
<a href="login.html">
Login
</a>
</li>
<li>
<a href="login-full.html">
Login Full
</a>
</li>
<li>
<a href="registration.html">
Registration
</a>
</li>
<li>
<a href="registration-full.html">
Registration Full
</a>
</li>
<li>
<a href="forgot-password.html">
Forgot Password
</a>
</li>
<li>
<a href="forgot-password-full.html">
Forgot Password Full
</a>
</li>
<li>
<a href="lock-screen.html">
Lock Screen
</a>
</li>
<li>
<a href="lock-screen-full.html">
Lock Screen Full
</a>
</li>
<li>
<a href="error-404.html">
Error 404
</a>
</li>
<li>
<a href="error-404-v2.html">
Error 404 Nested
</a>
</li>
<li>
<a href="error-500.html">
Error 500
</a>
</li>
<li>
<a href="extra-grid.html">
Grid
</a>
</li>
</ul>
</li>
<li>
<a href="angularjs/index.html">
<i class="fa fa-google"></i>
<span>AngularJS Demo</span>
</a>
</li>
</ul>
</div>
</div>
</section>
<div id="nav-col-submenu"></div>
</div>
<div id="content-wrapper">
<div class="row">
<div class="col-lg-12">
<div class="row">
<div class="col-lg-12">
<div id="content-header" class="clearfix">
<div class="pull-left">
<ol class="breadcrumb">
<li><a href="#">Home</a></li>
<li class="active"><span>Dashboard</span></li>
</ol>
<h1>Dashboard</h1>
</div>
<div class="pull-right hidden-xs">
<div class="xs-graph pull-left">
<div class="graph-label">
<b><i class="fa fa-shopping-cart"></i> 838</b> Orders
</div>
<div class="graph-content spark-orders"></div>
</div>
<div class="xs-graph pull-left mrg-l-lg mrg-r-sm">
<div class="graph-label">
<b>&dollar;12.338</b> Revenues
</div>
<div class="graph-content spark-revenues"></div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-3 col-sm-6 col-xs-12">
<div class="main-box infographic-box colored emerald-bg">
<i class="fa fa-envelope"></i>
<span class="headline">Messages</span>
<span class="value">4.658</span>
</div>
</div>
<div class="col-lg-3 col-sm-6 col-xs-12">
<div class="main-box infographic-box colored green-bg">
<i class="fa fa-money"></i>
<span class="headline">Orders</span>
<span class="value">22.631</span>
</div>
</div>
<div class="col-lg-3 col-sm-6 col-xs-12">
<div class="main-box infographic-box colored red-bg">
<i class="fa fa-user"></i>
<span class="headline">Users</span>
<span class="value">92.421</span>
</div>
</div>
<div class="col-lg-3 col-sm-6 col-xs-12">
<div class="main-box infographic-box colored purple-bg">
<i class="fa fa-globe"></i>
<span class="headline">Visits</span>
<span class="value">13.298</span>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12">
<div class="main-box">
<header class="main-box-header clearfix">
<h2 class="pull-left">Sales &amp; Earnings</h2>
</header>
<div class="main-box-body clearfix">
<div class="row">
<div class="col-md-9">
<div id="graph-bar" style="height: 240px; padding: 0px; position: relative;"></div>
</div>
<div class="col-md-3">
<ul class="graph-stats">
<li>
<div class="clearfix">
<div class="title pull-left">
Earnings
</div>
<div class="value pull-right" title="10% down" data-toggle="tooltip">
&dollar;94.382 <i class="fa fa-level-down red"></i>
</div>
</div>
<div class="progress">
<div style="width: 69%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="69" role="progressbar" class="progress-bar">
<span class="sr-only">69% Complete</span>
</div>
</div>
</li>
<li>
<div class="clearfix">
<div class="title pull-left">
Orders
</div>
<div class="value pull-right" title="24% up" data-toggle="tooltip">
3.930 <i class="fa fa-level-up green"></i>
</div>
</div>
<div class="progress">
<div style="width: 42%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="42" role="progressbar" class="progress-bar progress-bar-danger">
<span class="sr-only">42% Complete</span>
</div>
</div>
</li>
<li>
<div class="clearfix">
<div class="title pull-left">
New Clients
</div>
<div class="value pull-right" title="8% up" data-toggle="tooltip">
894 <i class="fa fa-level-up green"></i>
</div>
</div>
<div class="progress">
<div style="width: 78%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="78" role="progressbar" class="progress-bar progress-bar-success">
<span class="sr-only">78% Complete</span>
</div>
</div>
</li>
<li>
<div class="clearfix">
<div class="title pull-left">
Visitors
</div>
<div class="value pull-right" title="17% down" data-toggle="tooltip">
824.418 <i class="fa fa-level-down red"></i>
</div>
</div>
<div class="progress">
<div style="width: 94%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="94" role="progressbar" class="progress-bar progress-bar-warning">
<span class="sr-only">94% Complete</span>
</div>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="main-box clearfix">
<header class="main-box-header clearfix">
<h2 class="pull-left">Last orders</h2>
<div class="filter-block pull-right">
<div class="form-group pull-left">
<input type="text" class="form-control" placeholder="Search...">
<i class="fa fa-search search-icon"></i>
</div>
<a href="#" class="btn btn-primary pull-right">
<i class="fa fa-eye fa-lg"></i> View all orders
</a>
</div>
</header>
<div class="main-box-body clearfix">
<div class="table-responsive clearfix">
<table class="table table-hover">
<thead>
<tr>
<th><a href="#"><span>Order ID</span></a></th>
<th><a href="#" class="desc"><span>Date</span></a></th>
<th><a href="#" class="asc"><span>Customer</span></a></th>
<th class="text-center"><span>Status</span></th>
<th class="text-right"><span>Price</span></th>
<th>&nbsp;</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<a href="#">#8002</a>
</td>
<td>
2013/08/08
</td>
<td>
<a href="#">Robert De Niro</a>
</td>
<td class="text-center">
<span class="label label-success">Completed</span>
</td>
<td class="text-right">
&dollar; 825.50
</td>
<td class="text-center" style="width: 15%;">
<a href="#" class="table-link">
<span class="fa-stack">
<i class="fa fa-square fa-stack-2x"></i>
<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
</span>
</a>
</td>
</tr>
<tr>
<td>
<a href="#">#5832</a>
</td>
<td>
2013/08/08
</td>
<td>
<a href="#">John Wayne</a>
</td>
<td class="text-center">
<span class="label label-warning">On hold</span>
</td>
<td class="text-right">
&dollar; 923.93
</td>
<td class="text-center" style="width: 15%;">
<a href="#" class="table-link">
<span class="fa-stack">
<i class="fa fa-square fa-stack-2x"></i>
<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
</span>
</a>
</td>
</tr>
<tr>
<td>
<a href="#">#2547</a>
</td>
<td>
2013/08/08
</td>
<td>
<a href="#">Anthony Hopkins</a>
</td>
<td class="text-center">
<span class="label label-info">Pending</span>
</td>
<td class="text-right">
&dollar; 1.625.50
</td>
<td class="text-center" style="width: 15%;">
<a href="#" class="table-link">
<span class="fa-stack">
<i class="fa fa-square fa-stack-2x"></i>
<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
</span>
</a>
</td>
</tr>
<tr>
<td>
<a href="#">#9274</a>
</td>
<td>
2013/08/08
</td>
<td>
<a href="#">Charles Chaplin</a>
</td>
<td class="text-center">
<span class="label label-danger">Cancelled</span>
</td>
<td class="text-right">
&dollar; 35.34
</td>
<td class="text-center" style="width: 15%;">
<a href="#" class="table-link">
<span class="fa-stack">
<i class="fa fa-square fa-stack-2x"></i>
<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
</span>
</a>
</td>
</tr>
<tr>
<td>
<a href="#">#8463</a>
</td>
<td>
2013/08/08
</td>
<td>
<a href="#">Gary Cooper</a>
</td>
<td class="text-center">
<span class="label label-success">Completed</span>
</td>
<td class="text-right">
&dollar; 34.199.99
</td>
<td class="text-center" style="width: 15%;">
<a href="#" class="table-link">
<span class="fa-stack">
<i class="fa fa-square fa-stack-2x"></i>
<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
</span>
</a>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
<div class="main-box feed">
<header class="main-box-header clearfix">
<h2 class="pull-left">Project feed</h2>
</header>
<div class="main-box-body clearfix">
<ul>
<li class="clearfix">
<div class="img">
<img src="img/samples/robert-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Robert Downey Jr.</a> took photo with Instagram.
</div>
<div class="post-time">
Today 5:22 pm
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 5 min.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/lima-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Adriana Lima</a> checked in at Las Vegas Oscars
</div>
<div class="post-time">
Yesterday 11:38 am
</div>
<div class="photos clearfix">
<div class="item">
<a href="#">
<img src="img/samples/robert-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/emma-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/scarlett-300.jpg" alt=""/>
</a>
</div>
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 9 hours.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/emma-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Emma Watson</a> commented on Scarlett Johansson's video.
</div>
<div class="post-time">
Today 11:59 pm
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 28 min.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/ryan-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Ryan Gosling</a> likes Ryan Gosling's link on his own Timeline.
</div>
<div class="post-time">
Yesterday 9:43 pm
</div>
<div class="photos clearfix">
<div class="item">
<a href="#">
<img src="img/samples/scarlett-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/robert-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/emma-300.jpg" alt=""/>
</a>
</div>
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 5 hours.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/kunis-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Mila Kunis</a> invited you to his birthday party at her mansion.
</div>
<div class="post-time">
Yesterday 7:50 am
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 9 hours.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/emma-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Emma Watson</a> commented on Scarlett Johansson's video.
</div>
<div class="post-time">
Today 11:59 pm
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 28 min.
</div>
</li>
<li class="clearfix">
<div class="img">
<img src="img/samples/lima-300.jpg" alt=""/>
</div>
<div class="title">
<a href="#">Adriana Lima</a> checked in at Las Vegas Oscars
</div>
<div class="post-time">
Yesterday 11:38 am
</div>
<div class="photos clearfix">
<div class="item">
<a href="#">
<img src="img/samples/robert-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/emma-300.jpg" alt=""/>
</a>
</div>
<div class="item">
<a href="#">
<img src="img/samples/scarlett-300.jpg" alt=""/>
</a>
</div>
</div>
<div class="time-ago">
<i class="fa fa-clock-o"></i> 9 hours.
</div>
</li>
</ul>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
<div class="main-box clearfix">
<header class="main-box-header clearfix">
<h2>Todo</h2>
</header>
<div class="main-box-body clearfix">
<ul class="widget-todo">
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-1"/>
<label for="todo-1">
New products introduction <span class="label label-danger">High Priority</span>
</label>
</div>
</div>
</li>
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-2"/>
<label for="todo-2">
Checking the stock <span class="label label-success">Low Priority</span>
</label>
</div>
</div>
<div class="actions">
<a href="#" class="table-link">
<i class="fa fa-pencil"></i>
</a>
<a href="#" class="table-link danger">
<i class="fa fa-trash-o"></i>
</a>
</div>
</li>
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-3" checked="checked"/>
<label for="todo-3">
Buying coffee <span class="label label-warning">Medium Priority</span>
</label>
</div>
</div>
<div class="actions">
<a href="#" class="table-link">
<i class="fa fa-pencil"></i>
</a>
<a href="#" class="table-link danger">
<i class="fa fa-trash-o"></i>
</a>
</div>
</li>
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-4"/>
<label for="todo-4">
New marketing campaign <span class="label label-success">Low Priority</span>
</label>
</div>
</div>
</li>
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-5"/>
<label for="todo-5">
Calling Mom <span class="label label-warning">Medium Priority</span>
</label>
</div>
</div>
<div class="actions">
<a href="#" class="table-link badge">
<i class="fa fa-cog"></i>
</a>
</div>
</li>
<li class="clearfix">
<div class="name">
<div class="checkbox-nice">
<input type="checkbox" id="todo-6"/>
<label for="todo-6">
Ryan's birthday <span class="label label-danger">High Priority</span>
</label>
</div>
</div>
</li>
</ul>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
<div class="main-box weather-box">
<header class="main-box-header clearfix">
<h2 class="pull-left">Weather now</h2>
</header>
<div class="main-box-body clearfix">
<div class="current">
<div class="clearfix center-block" style="width: 220px;">
<canvas class="icon" id="current-weather" width="100" height="100"></canvas>
<div class="temp-wrapper">
<div class="temperature">
-10<span class="sign">°</span>
</div>
<div class="desc">
<i class="fa fa-map-marker"></i> New York
</div>
</div>
</div>
</div>
<div class="next">
<ul class="clearfix">
<li>
<div class="day">
MON
</div>
<div class="icon" title="Hot" data-toggle="tooltip">
<i class="wi wi-hot"></i>
</div>
<div class="temperature">
45<span class="sign">°</span>
</div>
</li>
<li>
<div class="day">
TUE
</div>
<div class="icon" title="Showers" data-toggle="tooltip">
<i class="wi wi-day-showers"></i>
</div>
<div class="temperature">
28<span class="sign">°</span>
</div>
</li>
<li>
<div class="day">
WED
</div>
<div class="icon" title="Cloudy" data-toggle="tooltip">
<i class="wi wi-cloudy-windy"></i>
</div>
<div class="temperature">
16<span class="sign">°</span>
</div>
</li>
<li>
<div class="day">
THU
</div>
<div class="icon" title="Thunderstom" data-toggle="tooltip">
<i class="wi wi-thunderstorm"></i>
</div>
<div class="temperature">
18<span class="sign">°</span>
</div>
</li>
<li>
<div class="day">
FRI
</div>
<div class="icon" title="Lightning" data-toggle="tooltip">
<i class="wi wi-night-alt-lightning"></i>
</div>
<div class="temperature">
22<span class="sign">°</span>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-lg-8 col-md-12 col-xs-12">
<div class="main-box">
<header class="main-box-header clearfix">
<h2 class="pull-left">Visitors location</h2>
<div class="icon-box pull-right">
<a href="#" class="btn pull-left">
<i class="fa fa-refresh"></i>
</a>
<a href="#" class="btn pull-left">
<i class="fa fa-cog"></i>
</a>
</div>
</header>
<div class="main-box-body clearfix">
<div class="row">
<div class="col-md-5">
<div class="map-stats">
<div class="table-responsive">
<table class="table table-condensed table-hover">
<thead>
<tr>
<th><span>Country</span></th>
<th class="text-center"><span>Last Visit</span></th>
<th class="text-center"><span>Status</span></th>
</tr>
</thead>
<tbody>
<tr>
<td>
USA
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status green">
<i class="fa fa-level-up"></i> 27%
</td>
</tr>
<tr>
<td>
Russia
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status red">
<i class="fa fa-level-down"></i> 43%
</td>
</tr>
<tr>
<td>
China
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status green">
<i class="fa fa-level-up"></i> 18%
</td>
</tr>
<tr>
<td>
India
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status green">
<i class="fa fa-level-up"></i> 63%
</td>
</tr>
<tr>
<td>
Australia
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status red">
<i class="fa fa-level-down"></i> 82%
</td>
</tr>
<tr>
<td>
Canada
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status red">
<i class="fa fa-level-down"></i> 11%
</td>
</tr>
<tr>
<td>
Argentina
</td>
<td class="text-center">
2013/08/08
</td>
<td class="text-center status green">
<i class="fa fa-level-up"></i> 74%
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="col-md-7">
<div id="world-map" style="width: 100%; height: 400px"></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<footer id="footer-bar" class="row">
<p id="footer-copyright" class="col-xs-12">
Powered by Cube Theme.
</p>
</footer>
</div>
</div>
</div>
</div>


<%@include file="modules/config-tool.jsp" %>
 
<script src="<c:url value="/resources/js/demo-skin-changer.js"/>"></script>  
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nanoscroller.min.js"/>"></script>
<script src="<c:url value="/resources/js/demo.js"/>"></script>  
 
<script src="<c:url value="/resources/js/moment.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-jvectormap-1.2.2.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-jvectormap-world-merc-en.js"/>"></script>
<script src="<c:url value="/resources/js/gdp-data.js"/>"></script>
<script src="<c:url value="/resources/js/flot/jquery.flot.min.js"/>"></script>
<script src="<c:url value="/resources/js/flot/jquery.flot.resize.min.js"/>"></script>
<script src="<c:url value="/resources/js/flot/jquery.flot.time.min.js"/>"></script>
<script src="<c:url value="/resources/js/flot/jquery.flot.threshold.js"/>"></script>
<script src="<c:url value="/resources/js/flot/jquery.flot.axislabels.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.sparkline.min.js"/>"></script>
<script src="<c:url value="/resources/js/skycons.js"/>"></script>
 
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="<c:url value="/resources/js/pace.min.js"/>"></script>
 
<script>
	$(document).ready(function() {
		
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		if ($('#graph-bar').length) {
			var data1 = [
			    [gd(2015, 1, 1), 838], [gd(2015, 1, 2), 749], [gd(2015, 1, 3), 634], [gd(2015, 1, 4), 1080], [gd(2015, 1, 5), 850], [gd(2015, 1, 6), 465], [gd(2015, 1, 7), 453], [gd(2015, 1, 8), 646], [gd(2015, 1, 9), 738], [gd(2015, 1, 10), 899], [gd(2015, 1, 11), 830], [gd(2015, 1, 12), 789]
			];
			
			var data2 = [
			    [gd(2015, 1, 1), 342], [gd(2015, 1, 2), 721], [gd(2015, 1, 3), 493], [gd(2015, 1, 4), 403], [gd(2015, 1, 5), 657], [gd(2015, 1, 6), 782], [gd(2015, 1, 7), 609], [gd(2015, 1, 8), 543], [gd(2015, 1, 9), 599], [gd(2015, 1, 10), 359], [gd(2015, 1, 11), 783], [gd(2015, 1, 12), 680]
			];
			
			var series = new Array();

			series.push({
				data: data1,
				bars: {
					show : true,
					barWidth: 24 * 60 * 60 * 12000,
					lineWidth: 1,
					fill: 1,
					align: 'center'
				},
				label: 'Revenues'
			});
			series.push({
				data: data2,
				color: '#e84e40',
				lines: {
					show : true,
					lineWidth: 3,
				},
				points: { 
					fillColor: "#e84e40", 
					fillColor: '#ffffff', 
					pointWidth: 1,
					show: true 
				},
				label: 'Orders'
			});

			$.plot("#graph-bar", series, {
				colors: ['#03a9f4', '#f1c40f', '#2ecc71', '#3498db', '#9b59b6', '#95a5a6'],
				grid: {
					tickColor: "#f2f2f2",
					borderWidth: 0,
					hoverable: true,
					clickable: true
				},
				legend: {
					noColumns: 1,
					labelBoxBorderColor: "#000000",
					position: "ne"       
				},
				shadowSize: 0,
				xaxis: {
					mode: "time",
					tickSize: [1, "month"],
					tickLength: 0,
					// axisLabel: "Date",
					axisLabelUseCanvas: true,
					axisLabelFontSizePixels: 12,
					axisLabelFontFamily: 'Open Sans, sans-serif',
					axisLabelPadding: 10
				}
			});

			var previousPoint = null;
			$("#graph-bar").bind("plothover", function (event, pos, item) {
				if (item) {
					if (previousPoint != item.dataIndex) {

						previousPoint = item.dataIndex;

						$("#flot-tooltip").remove();
						var x = item.datapoint[0],
						y = item.datapoint[1];

						showTooltip(item.pageX, item.pageY, item.series.label, y );
					}
				}
				else {
					$("#flot-tooltip").remove();
					previousPoint = [0,0,0];
				}
			});

			function showTooltip(x, y, label, data) {
				$('<div id="flot-tooltip">' + '<b>' + label + ': </b><i>' + data + '</i>' + '</div>').css({
					top: y + 5,
					left: x + 20
				}).appendTo("body").fadeIn(200);
			}
		}
	    
		//WORLD MAP
		$('#world-map').vectorMap({
			map: 'world_merc_en',
			backgroundColor: '#ffffff',
			zoomOnScroll: false,
			regionStyle: {
				initial: {
					fill: '#e1e1e1',
					stroke: 'none',
					"stroke-width": 0,
					"stroke-opacity": 1
				},
				hover: {
					"fill-opacity": 0.8
				},
				selected: {
					fill: '#8dc859'
				},
				selectedHover: {
				}
			},
			markerStyle: {
				initial: {
					fill: '#e84e40',
					stroke: '#e84e40'
				}
			},
			markers: [
				{latLng: [38.35, -121.92], name: 'Los Angeles - 23'},
				{latLng: [39.36, -73.12], name: 'New York - 84'},
				{latLng: [50.49, -0.23], name: 'London - 43'},
				{latLng: [36.29, 138.54], name: 'Tokyo - 33'},
				{latLng: [37.02, 114.13], name: 'Beijing - 91'},
				{latLng: [-32.59, 150.21], name: 'Sydney - 22'},
			],
			series: {
				regions: [{
					values: gdpData,
					scale: ['#6fc4fe', '#2980b9'],
					normalizeFunction: 'polynomial'
				}]
			},
			onRegionLabelShow: function(e, el, code){
				el.html(el.html()+' ('+gdpData[code]+')');
			}
		});

		/* SPARKLINE - graph in header */
		var orderValues = [10,8,5,7,4,4,3,8,0,7,10,6,5,4,3,6,8,9];

		$('.spark-orders').sparkline(orderValues, {
			type: 'bar', 
			barColor: '#ced9e2',
			height: 25,
			barWidth: 6
		});

		var revenuesValues = [8,3,2,6,4,9,1,10,8,2,5,8,6,9,3,4,2,3,7];

		$('.spark-revenues').sparkline(revenuesValues, {
			type: 'bar', 
			barColor: '#ced9e2',
			height: 25,
			barWidth: 6
		});

		/* ANIMATED WEATHER */
		var skycons = new Skycons({"color": "#03a9f4"});
		// on Android, a nasty hack is needed: {"resizeClear": true}

		// you can add a canvas by it's ID...
		skycons.add("current-weather", Skycons.SNOW);

		// start animation!
		skycons.play();

	});
	</script>
</body>
</html>