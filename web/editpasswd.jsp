<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src=""></script>
<style type="text/css">
@import "css/cart.css"
</style>
<title>Information</title>

<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
		<title>个人资料</title>
        <script type="text/javascript" src="js/editpasswd.js"></script>
		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/stepstyle.css" rel="stylesheet" type="text/css">
        <link href="css/infstyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>	
	</head>

	<body>
		<jsp:include page="Top_bar.jsp"></jsp:include>
        <jsp:include page="Search_bar.jsp"></jsp:include>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="home.jsp">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="user-infoPic">

							<div class="filePic">
								<img class="am-circle am-img-thumbnail" src="img/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${username}</i></b></div>
                                <div class="safeText">
                                  	<a href="safety.html">账户安全:<font color="#EE4400"> ${Safety } </font>分</a>
									<div class="progressBar"><span style="left: -95px;" class="progress"></span></div>
								</div>
							</div>
					</div>
					<form id="editpasswd" action="user" method="post" class="am-form am-form-horizontal" name="safeForm">
						<div class="am-form-group">
							<label for="user-old-password" class="am-form-label">原密码</label>
							<div class="am-form-content">
								<input class="required" type="password" name="oldPasswd" maxlength="50" id="user-old-password" placeholder="请输入原登录密码">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input id="passwd1" class="required" type="password" name="passwd1" maxlength="50" placeholder="由数字、字母组合">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								<input id="passwd2" class="required" type="password" name="passwd2" maxlength="50" placeholder="请再次输入上面的密码" onkeyup="safety()">
							</div>
						</div>
						<div class="info-btn">
							<input type="hidden" name="action" value="editpasswd">
							<input class="am-btn am-btn-danger" type="submit" value="保存修改">
						</div>

					</form>

				</div>
			</div>

			<jsp:include page="menu.jsp" ></jsp:include>
		</div>

	</body>

</html>