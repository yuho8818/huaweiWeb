<%@ page isELIgnored="false"   language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
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

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="img/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户信息</b></div>
								<div><b>昵称：<i>${username }</i></b></div>
								<div><b>电话：<i>${phone }</i></b></div>
								
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal" id="editinf" action="user" method="post">

								<div class="am-form-group">
									<label for="user-name2" class="am-form-label">昵称</label>
									<div class="am-form-content">
										<input type="text" name="uname"  id="user-name2" placeholder="nickname">
                                          <small>昵称长度不能超过20个汉字</small>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">电话</label>
									<div class="am-form-content">
										<input type="text" name="phone" class="phone"  id="user-phone" placeholder="telephonenumber">

									</div>
								</div>
								
								
								
								<div class="info-btn">
									<input type="hidden" name="action" value="editinf">
							        <input class="am-btn am-btn-danger" type="submit" value="保存修改">
								</div>

							</form>
						</div>

					</div>

				</div>
			</div>

			<jsp:include page="menu.jsp" ></jsp:include>
		</div>

	</body>

</html>