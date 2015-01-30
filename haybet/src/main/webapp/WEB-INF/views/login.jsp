<%@ page session="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Haybet - Login</title>


<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap/bootstrap.min.css" />" />

<script src="js/demo-rtl.js"></script>


<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/font-awesome.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/libs/nanoscroller.css" />" />

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/compiled/theme_styles.css" />" />


<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>

<link type="image/x-icon" href="<c:url value="/resources/img/favicon.png" />" rel="shortcut icon" />
<!--[if lt IE 9]>
		<script src="<c:url value="/resources/js/html5shiv.js" />"></script>
		<script src="<c:url value="/resources/js/respond.min.js" />"></script>
	<![endif]-->
</head>
<body id="login-page">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div id="login-box">
					<div id="login-box-holder">
						<div class="row">
							<div class="col-xs-12">
								<header id="login-header">
									<div id="login-logo">
										<img src="<c:url value="/resources/img/logo.png" />" alt="" />
									</div>
								</header>
								<div id="login-box-inner">
									<form:form method="POST" modelAttribute="user">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<input class="form-control" type="text" placeholder="Nick Name" name="nickName">
										</div>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-key"></i></span>
											<input type="password" class="form-control" placeholder="Password" name="password">
										</div>
										<div id="remember-me-wrapper">
											<div class="row">
												<div class="col-xs-6">
													<div class="checkbox-nice">
														<input type="checkbox" id="remember-me" checked="checked" />
														<label for="remember-me"> Remember me </label>
													</div>
												</div>
												<a href="<c:url value="/forgot-password"/>" id="login-forget-link" class="col-xs-6"> Forgot password? </a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<button type="submit" value="login" class="btn btn-success col-xs-12">Login</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<p class="social-text">Or login with</p>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-6">
												<button type="submit" class="btn btn-primary col-xs-12 btn-facebook">
													<i class="fa fa-facebook"></i> facebook
												</button>
											</div>
											<div class="col-xs-12 col-sm-6">
												<button type="submit" class="btn btn-primary col-xs-12 btn-twitter">
													<i class="fa fa-twitter"></i> Twitter
												</button>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<div id="login-box-footer">
						<div class="row">
							<div class="col-xs-12">
								Do not have an account? <a href="<c:url value="/register"/>"> Register now </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="modules/config-tool.jsp" %>

	<script src="<c:url value="/resources/js/demo-skin-changer.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.nanoscroller.min.js" />"></script>
	<script src="<c:url value="/resources/js/demo.js" />"></script>


	<script src="<c:url value="/resources/js/scripts.js" />"></script>

</body>


</html>