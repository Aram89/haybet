<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Cube - Bootstrap Admin Template</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap/bootstrap.min.css" />" />

<script src="<c:url value="/resources/js/demo-rtl.js" />"></script>


<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/libs/font-awesome.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/libs/nanoscroller.css" />" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/compiled/theme_styles.css" />" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/libs/magnific-popup.css" />" />

<link type="image/x-icon"
	href="<c:url value="/resources/img/favicon.png" />" rel="shortcut icon" />

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400'
	rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
		<script src="<c:url value="/resources/js/html5shiv.js" />"></script>
		<script src="<c:url value="/resources/js/respond.min.js" />"></script>
	<![endif]-->

</head>
<body>
	<div id="theme-wrapper">
	<%@include file="../modules/header-navbar.jsp" %>
	<div id="page-wrapper" class="container">
			<div class="row">
				<div id="nav-col">
					<%@include file="../modules/col-left.jsp" %>
					<div id="nav-col-submenu"></div>
				</div>
				<div id="content-wrapper">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-lg-12">
									<ol class="breadcrumb">
										<li><a href="#">Home</a></li>
										<li><a href="#">Users</a></li>
										<li class="active"><span>User Profile</span></li>
									</ol>
									<h1>User Profile</h1>
								</div>
							</div>
							<div class="row" id="user-profile">
								<div class="col-lg-3 col-md-4 col-sm-4">
									<div class="main-box clearfix">
										<header class="main-box-header clearfix">
											<h2>Scarlett Johansson</h2>
										</header>
										<div class="main-box-body clearfix">
											<div class="profile-status">
												<i class="fa fa-circle"></i> Online
											</div>
											<img src="img/samples/scarlet-159.png" alt=""
												class="profile-img img-responsive center-block" />
											<div class="profile-label">
												<span class="label label-danger">Admin</span>
											</div>
											<div class="profile-stars">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i> <span>Super User</span>
											</div>
											<div class="profile-since">Member since: Jan 2012</div>
											<div class="profile-details">
												<ul class="fa-ul">
													<li><i class="fa-li fa fa-truck"></i>Orders: <span>456</span></li>
													<li><i class="fa-li fa fa-comment"></i>Posts: <span>828</span></li>
													<li><i class="fa-li fa fa-tasks"></i>Tasks done: <span>1024</span></li>
												</ul>
											</div>
											<div class="profile-message-btn center-block text-center">
												<a href="#" class="btn btn-success"> <i
													class="fa fa-envelope"></i> Send message
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-9 col-md-8 col-sm-8">
									<div class="main-box clearfix">
										<div class="tabs-wrapper profile-tabs">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab-newsfeed"
													data-toggle="tab">Newsfeed</a></li>
												<li><a href="#tab-activity" data-toggle="tab">Activity</a></li>
												<li><a href="#tab-friends" data-toggle="tab">Friends</a></li>
												<li><a href="#tab-chat" data-toggle="tab">Chat</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane fade in active" id="tab-newsfeed">
													<div id="newsfeed">
														<div class="story">
															<div class="story-user">
																<a href="#"> <img src="img/samples/robert-300.jpg"
																	alt="" />
																</a>
															</div>
															<div class="story-content">
																<header class="story-header">
																	<div class="story-author">
																		<a href="#" class="story-author-link"> Robert
																			Downey Jr. </a> posted a status update
																	</div>
																	<div class="story-time">
																		<i class="fa fa-clock-o"></i> just now
																	</div>
																</header>
																<div class="story-inner-content">Now that we know
																	who you are, I know who I am. I'm not a mistake! It all
																	makes sense! In a comic, you know how you can tell who
																	the arch-villain's going to be? He's the exact opposite
																	of the hero. And most times they're friends, like you
																	and me! I should've known way back when... You know
																	why, David? Because of the kids. They called me Mr
																	Glass.</div>
																<footer class="story-footer">
																	<a href="#" class="story-comments-link"> <i
																		class="fa fa-comment fa-lg"></i> 8320 Comments
																	</a> <a href="#" class="story-likes-link"> <i
																		class="fa fa-heart fa-lg"></i> 82k Likes
																	</a>
																</footer>
															</div>
														</div>
														<div class="story">
															<div class="story-user">
																<a href="#"> <img src="img/samples/angelina-300.jpg"
																	alt="" />
																</a>
															</div>
															<div class="story-content">
																<header class="story-header">
																	<div class="story-author">
																		<a href="#" class="story-author-link"> Angelina
																			Jolie </a> checked in at <a href="#">Place du Casino</a>
																	</div>
																	<div class="story-time">
																		<i class="fa fa-clock-o"></i> 3 Minutes ago
																	</div>
																</header>
																<div class="story-inner-content">
																	<div id="map-apple" class="map-content"></div>
																</div>
																<footer class="story-footer">
																	<a href="#" class="story-comments-link"> <i
																		class="fa fa-comment fa-lg"></i> 23k Comments
																	</a> <a href="#" class="story-likes-link"> <i
																		class="fa fa-heart fa-lg"></i> 159k Likes
																	</a>
																</footer>
															</div>
														</div>
														<div class="story">
															<div class="story-user">
																<a href="#"> <img src="img/samples/ryan-300.jpg"
																	alt="" />
																</a>
															</div>
															<div class="story-content">
																<header class="story-header">
																	<div class="story-author">
																		<a href="#" class="story-author-link"> Ryan
																			Gossling </a> uploaded 5 new photos to album <a href="#">Bora
																			Bora</a>
																	</div>
																	<div class="story-time">
																		<i class="fa fa-clock-o"></i> 8 Hours ago
																	</div>
																</header>
																<div class="story-inner-content">
																	<div class="story-images clearfix">
																		<a href="img/samples/tahiti-1.jpg"
																			class="story-image-link"> <img
																			src="img/samples/tahiti-1.jpg" alt=""
																			class="img-responsive" />
																		</a> <a href="img/samples/tahiti-2.jpg"
																			class="story-image-link story-image-link-small">
																			<img src="img/samples/tahiti-2.jpg" alt=""
																			class="img-responsive" />
																		</a> <a href="img/samples/tahiti-3.jpg"
																			class="story-image-link story-image-link-small">
																			<img src="img/samples/tahiti-3.jpg" alt=""
																			class="img-responsive" />
																		</a> <a href="img/samples/tahiti-3.jpg"
																			class="story-image-link story-image-link-small">
																			<img src="img/samples/tahiti-3.jpg" alt=""
																			class="img-responsive" />
																		</a> <a href="img/samples/tahiti-2.jpg"
																			class="story-image-link story-image-link-small hidden-xs">
																			<img src="img/samples/tahiti-2.jpg" alt=""
																			class="img-responsive" />
																		</a>
																	</div>
																</div>
																<footer class="story-footer">
																	<a href="#" class="story-comments-link"> <i
																		class="fa fa-comment fa-lg"></i> 46 Comments
																	</a> <a href="#" class="story-likes-link"> <i
																		class="fa fa-heart fa-lg"></i> 823 Likes
																	</a>
																</footer>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="tab-activity">
													<div class="table-responsive">
														<table class="table">
															<tbody>
																<tr>
																	<td class="text-center"><i class="fa fa-comment"></i>
																	</td>
																	<td>Scarlett Johansson posted a comment in <a
																		href="#">Avengers Initiative</a> project.
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-truck"></i>
																	</td>
																	<td>Scarlett Johansson changed order status from <span
																		class="label label-primary">Pending</span> to <span
																		class="label label-success">Completed</span>
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-check"></i>
																	</td>
																	<td>Scarlett Johansson posted a comment in <a
																		href="#">Lost in Translation opening scene</a>
																		discussion.
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-users"></i>
																	</td>
																	<td>Scarlett Johansson posted a comment in <a
																		href="#">Avengers Initiative</a> project.
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-heart"></i>
																	</td>
																	<td>Scarlett Johansson changed order status from <span
																		class="label label-warning">On Hold</span> to <span
																		class="label label-danger">Disabled</span>
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-check"></i>
																	</td>
																	<td>Scarlett Johansson posted a comment in <a
																		href="#">Lost in Translation opening scene</a>
																		discussion.
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-truck"></i>
																	</td>
																	<td>Scarlett Johansson changed order status from <span
																		class="label label-primary">Pending</span> to <span
																		class="label label-success">Completed</span>
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
																<tr>
																	<td class="text-center"><i class="fa fa-users"></i>
																	</td>
																	<td>Scarlett Johansson posted a comment in <a
																		href="#">Avengers Initiative</a> project.
																	</td>
																	<td>2014/08/08 12:08</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="tab-pane clearfix fade" id="tab-friends">
													<ul class="widget-users row">
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/scarlet.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Scarlett Johansson</a>
																</div>
																<div class="time">
																	<i class="fa fa-clock-o"></i> Last online: 5 minutes
																	ago
																</div>
																<div class="type">
																	<span class="label label-danger">Admin</span>
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/kunis.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Mila Kunis</a>
																</div>
																<div class="time online">
																	<i class="fa fa-check-circle"></i> Online
																</div>
																<div class="type">
																	<span class="label label-warning">Pending</span>
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/ryan.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Ryan Gossling</a>
																</div>
																<div class="time online">
																	<i class="fa fa-check-circle"></i> Online
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/robert.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Robert Downey Jr.</a>
																</div>
																<div class="time">
																	<i class="fa fa-clock-o"></i> Last online: Thursday
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/emma.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Emma Watson</a>
																</div>
																<div class="time">
																	<i class="fa fa-clock-o"></i> Last online: 1 week ago
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/george.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">George Clooney</a>
																</div>
																<div class="time">
																	<i class="fa fa-clock-o"></i> Last online: 1 month ago
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/kunis.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Mila Kunis</a>
																</div>
																<div class="time online">
																	<i class="fa fa-check-circle"></i> Online
																</div>
																<div class="type">
																	<span class="label label-warning">Pending</span>
																</div>
															</div>
														</li>
														<li class="col-md-6">
															<div class="img">
																<img src="img/samples/ryan.png" alt="" />
															</div>
															<div class="details">
																<div class="name">
																	<a href="#">Ryan Gossling</a>
																</div>
																<div class="time online">
																	<i class="fa fa-check-circle"></i> Online
																</div>
															</div>
														</li>
													</ul>
													<br /> <a href="#" class="btn btn-success pull-right">View
														all users</a>
												</div>
												<div class="tab-pane fade" id="tab-chat">
													<div class="conversation-wrapper">
														<div class="conversation-content">
															<div class="conversation-inner">
																<div class="conversation-item item-left clearfix">
																	<div class="conversation-user">
																		<img src="img/samples/ryan.png" alt="" />
																	</div>
																	<div class="conversation-body">
																		<div class="name">Ryan Gossling</div>
																		<div class="time hidden-xs">September 21, 2013
																			18:28</div>
																		<div class="text">I don't think they tried to
																			market it to the billionaire, spelunking,
																			base-jumping crowd.</div>
																	</div>
																</div>
																<div class="conversation-item item-right clearfix">
																	<div class="conversation-user">
																		<img src="img/samples/kunis.png" alt="" />
																	</div>
																	<div class="conversation-body">
																		<div class="name">Mila Kunis</div>
																		<div class="time hidden-xs">September 21, 2013
																			12:45</div>
																		<div class="text">Normally, both your asses
																			would be dead as fucking fried chicken, but you
																			happen to pull this shit while I'm in a transitional
																			period so I don't wanna kill you, I wanna help you.</div>
																	</div>
																</div>
																<div class="conversation-item item-right clearfix">
																	<div class="conversation-user">
																		<img src="img/samples/kunis.png" alt="" />
																	</div>
																	<div class="conversation-body">
																		<div class="name">Mila Kunis</div>
																		<div class="time hidden-xs">September 21, 2013
																			12:45</div>
																		<div class="text">Normally, both your asses
																			would be dead as fucking fried chicken, but you
																			happen to pull this shit while I'm in a transitional
																			period so I don't wanna kill you, I wanna help you.</div>
																	</div>
																</div>
																<div class="conversation-item item-left clearfix">
																	<div class="conversation-user">
																		<img src="img/samples/ryan.png" alt="" />
																	</div>
																	<div class="conversation-body">
																		<div class="name">Ryan Gossling</div>
																		<div class="time hidden-xs">September 21, 2013
																			18:28</div>
																		<div class="text">I don't think they tried to
																			market it to the billionaire, spelunking,
																			base-jumping crowd.</div>
																	</div>
																</div>
																<div class="conversation-item item-right clearfix">
																	<div class="conversation-user">
																		<img src="img/samples/kunis.png" alt="" />
																	</div>
																	<div class="conversation-body">
																		<div class="name">Mila Kunis</div>
																		<div class="time hidden-xs">September 21, 2013
																			12:45</div>
																		<div class="text">Normally, both your asses
																			would be dead as fucking fried chicken, but you
																			happen to pull this shit while I'm in a transitional
																			period so I don't wanna kill you, I wanna help you.</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="conversation-new-message">
															<form>
																<div class="form-group">
																	<textarea class="form-control" rows="2"
																		placeholder="Enter your message..."></textarea>
																</div>
																<div class="clearfix">
																	<button type="submit"
																		class="btn btn-success pull-right">Send
																		message</button>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<footer id="footer-bar" class="row">
						<p id="footer-copyright" class="col-xs-12">Powered by Cube
							Theme.</p>
					</footer>
				</div>
			</div>
		</div>
	</div>
	<div id="config-tool" class="closed">
		<a id="config-tool-cog"> <i class="fa fa-cog"></i>
		</a>
		<div id="config-tool-options">
			<h4>Layout Options</h4>
			<ul>
				<li>
					<div class="checkbox-nice">
						<input type="checkbox" id="config-fixed-header" /> <label
							for="config-fixed-header"> Fixed Header </label>
					</div>
				</li>
				<li>
					<div class="checkbox-nice">
						<input type="checkbox" id="config-fixed-sidebar" /> <label
							for="config-fixed-sidebar"> Fixed Left Menu </label>
					</div>
				</li>
				<li>
					<div class="checkbox-nice">
						<input type="checkbox" id="config-fixed-footer" /> <label
							for="config-fixed-footer"> Fixed Footer </label>
					</div>
				</li>
				<li>
					<div class="checkbox-nice">
						<input type="checkbox" id="config-boxed-layout" /> <label
							for="config-boxed-layout"> Boxed Layout </label>
					</div>
				</li>
				<li>
					<div class="checkbox-nice">
						<input type="checkbox" id="config-rtl-layout" /> <label
							for="config-rtl-layout"> Right-to-Left </label>
					</div>
				</li>
			</ul>
			<br />
			<h4>Skin Color</h4>
			<ul id="skin-colors" class="clearfix">
				<li><a class="skin-changer" data-skin="" data-toggle="tooltip"
					title="Default" style="background-color: #34495e;"> </a></li>
				<li><a class="skin-changer" data-skin="theme-white"
					data-toggle="tooltip" title="White/Green"
					style="background-color: #2ecc71;"> </a></li>
				<li><a class="skin-changer blue-gradient"
					data-skin="theme-blue-gradient" data-toggle="tooltip"
					title="Gradient"> </a></li>
				<li><a class="skin-changer" data-skin="theme-turquoise"
					data-toggle="tooltip" title="Green Sea"
					style="background-color: #1abc9c;"> </a></li>
				<li><a class="skin-changer" data-skin="theme-amethyst"
					data-toggle="tooltip" title="Amethyst"
					style="background-color: #9b59b6;"> </a></li>
				<li><a class="skin-changer" data-skin="theme-blue"
					data-toggle="tooltip" title="Blue"
					style="background-color: #2980b9;"> </a></li>
				<li><a class="skin-changer" data-skin="theme-red"
					data-toggle="tooltip" title="Red"
					style="background-color: #e74c3c;"> </a></li>
				<li><a class="skin-changer" data-skin="theme-whbl"
					data-toggle="tooltip" title="White/Blue"
					style="background-color: #3498db;"> </a></li>
			</ul>
		</div>
	</div>

	<script src="<c:url value="/resources/js/demo-skin-changer.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.nanoscroller.min.js" />"></script>
	<script src="<c:url value="/resources/js/demo.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.slimscroll.min.js" />"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&amp;sensor=false"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>

	<script src="<c:url value="/resources/js/scripts.js" />"></script>
	<script src="<c:url value="/resources/js/pace.min.js" />"></script>

	<script type="text/javascript">
		// When the window has finished loading create our google map below
		google.maps.event.addDomListener(window, 'load', init);

		function init() {
			var latlng = new google.maps.LatLng(40.763986, -73.958674);

			//APPLE MAP
			var mapOptionsApple = {
				zoom : 12,
				scrollwheel : false,
				center : latlng,

				// How you would like to style the map. 
				// This is where you would paste any style found on Snazzy Maps.
				styles : [ {
					"featureType" : "water",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#a2daf2"
					} ]
				}, {
					"featureType" : "landscape.man_made",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#f7f1df"
					} ]
				}, {
					"featureType" : "landscape.natural",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#d0e3b4"
					} ]
				}, {
					"featureType" : "landscape.natural.terrain",
					"elementType" : "geometry",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "poi.park",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#bde6ab"
					} ]
				}, {
					"featureType" : "poi",
					"elementType" : "labels",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "poi.medical",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#fbd3da"
					} ]
				}, {
					"featureType" : "poi.business",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "road",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "road",
					"elementType" : "labels",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#ffe15f"
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"color" : "#efd151"
					} ]
				}, {
					"featureType" : "road.arterial",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#ffffff"
					} ]
				}, {
					"featureType" : "road.local",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "black"
					} ]
				}, {
					"featureType" : "transit.station.airport",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#cfb2db"
					} ]
				} ]
			};

			var mapElementApple = document.getElementById('map-apple');

			// Create the Google Map using out element and options defined above
			var mapApple = new google.maps.Map(mapElementApple, mapOptionsApple);

			var markerApple = new google.maps.Marker({
				position : latlng,
				map : mapApple
			});
		}

		$(document).ready(function() {
			$('.conversation-inner').slimScroll({
				height : '340px'
			});
		});

		$(function() {
			$(document).ready(function() {
				$('#newsfeed .story-images').magnificPopup({
					type : 'image',
					delegate : 'a',
					gallery : {
						enabled : true
					}
				});
			});
		});
	</script>
</body>

</html>