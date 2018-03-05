<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>地址管理</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="csscopy/addstyle.css" rel="stylesheet" type="text/css">
		
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
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

					<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<%ArrayList<userAddress> list =(ArrayList<userAddress>) session.getAttribute("list"); %>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
                           <%for(int i=0;i<list.size();i++){ 
                                if(list.get(i).isIfdefault()){%>
							<li class="user-addresslist defaultAddr">
								<span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
								<p class="new-tit new-p-re">
									<span class="new-txt"><%=list.get(i).getName() %></span>
									<span class="new-txt-rd2"><%=list.get(i).getPhone() %></span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province"><%=list.get(i).getProvince() %></span>省
										<span class="city"><%=list.get(i).getCity() %></span>市
										<span class="dist"><%=list.get(i).getTown() %></span>区
										<span class="street"><%=list.get(i).getDeadress() %></span></p>
								</div>
								<div class="new-addr-btn">
									<a href="user?action=deleteaddress&id=<%=list.get(i).getId() %>" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
								</div>
							</li>
                             <%}else if(!list.get(i).isIfdefault()){ %>
							<li class="user-addresslist">
								<span class="new-option-r" ><i class="am-icon-check-circle"></i>
								          <a href="user?action=setdefault&id=<%=list.get(i).getId() %>" style="color:white;">设为默认</a></span>
								<p class="new-tit new-p-re">
									<span class="new-txt"><%=list.get(i).getName() %></span>
									<span class="new-txt-rd2"><%=list.get(i).getPhone() %></span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province"><%=list.get(i).getProvince() %></span>省
										<span class="city"><%=list.get(i).getCity() %></span>市
										<span class="dist"><%=list.get(i).getTown() %></span>区
										<span class="street"><%=list.get(i).getDeadress() %></span></p>
								</div>
								<div class="new-addr-btn">
									
									<a href="user?action=deleteaddress&id=<%=list.get(i).getId() %>" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
								</div>
							</li>
							<%}} %>
						</ul>
						<div class="clear"></div>
						<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form class="am-form am-form-horizontal" id="editaddress" method="post" action="user">
                                          <input type="hidden" name="action" value="editaddress">
										<div class="am-form-group">
											<label for="user-name" class="am-form-label">收货人</label>
											<div class="am-form-content">
												<input type="text" id="user-name" name="name" placeholder="收货人">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">手机号码</label>
											<div class="am-form-content">
												<input id="user-phone" name="phone" placeholder="手机号必填" type="text">
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-address" class="am-form-label">所在地</label>
											<div class="am-form-content address">
												<select name="province" data-am-selected>
													<option value="辽宁">辽宁省</option>
													<option value="湖北" selected>湖北省</option>
												</select>
												<select name="city" data-am-selected>
													<option value="沈阳">沈阳市</option>
													<option value="武汉" selected>武汉市</option>
												</select>
												<select name="town" data-am-selected>
													<option value="浑南新区">浑南新区</option>
													<option value="洪山区" selected>洪山区</option>
												</select>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-intro" class="am-form-label">详细地址</label>
											<div class="am-form-content">
												<textarea name="deaddress" class="" rows="3" id="user-intro" placeholder="输入详细地址（不需要写出省，市，区）"></textarea>
												<small>100字以内写出你的详细地址...</small>
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<a class="am-btn am-btn-danger" href="javascript:document:editaddress.submit();">保存</a>
												<a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>

					</div>

					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script>

					<div class="clear"></div>

				</div>
				
			</div>

			<jsp:include page="menu.jsp" ></jsp:include>
		</div>

</body>
</html>