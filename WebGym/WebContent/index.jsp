<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首頁</title>
<link href='css/jquery.qtip.min.css' rel='stylesheet' />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<style>
body{
background-color: #002147;
}

#jumbotron{

margin-top: 100px;
}
#container {
	
/* 	background-color: #002147; */
}

.navbar-nav{
	color:#002147;

}
</style>
</head>
<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Temmujin Fitness</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">課程介紹</a></li>
				<li><a href="#about">教練介紹</a></li>
				<li><a href="#contact">場地</a></li>
				<li><a href="#contact">公佈欄</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">會員中心 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">會員登入</a></li>
				<li><a href="#">註冊</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>



	<div class="jumbotron" id="jumbotron">
		<div class="container" >
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h1 style="text-align: center">線上預約運動課程</h1>
					<select>
						<option value="volvo">日期</option>
						<option value="saab">Saab</option>
						<option value="opel">Opel</option>
						<option value="audi">Audi</option>
					</select> <select>
						<option value="volvo">地點</option>
						<option value="worldgym">worldgym</option>
						<option value="fitness">fitness</option>
					</select>

				</div>
				<div class="col-md-2"></div>


			</div>
		</div>
	</div>





	<script src='js/jquery.min.js'></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>