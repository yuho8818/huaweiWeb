<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<%@ page import="pojo.Goods"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>商品页面</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link type="text/css" href="csscopy/optstyle.css" rel="stylesheet" />
		<link type="text/css" href="csscopy/style.css" rel="stylesheet" />

		<script type="text/javascript" src="basic/js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="basic/js/quick_links.js"></script>

		<script type="text/javascript" src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		
		
<title>Insert title here</title>
</head>
<body>
     <jsp:include page="Top_bar.jsp"></jsp:include>
     
     
<%Goods goods =(Goods)request.getAttribute("goods"); %> 
     <!--分类-->
			<div class="nav-table" style="margin-top:50px;">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
				<ol class="am-breadcrumb am-breadcrumb-slash">
					<li><a href="#">首页</a></li>
					<li><a href="#">分类</a></li>
					<li class="am-active">内容</li>
				</ol>
				
				

				
				

				<div class="item-inform" style="height:1000px;">
					<div class="clearfixLeft" id="clearcontent">

						<div class="box">
							<script>
							 function change(i){
								var src = document.getElementById("pic"+i).src; 	
								document.getElementById("pic").src=src;
								for(var j=1;j<4;j++){
									document.getElementById("li_img"+j).className="";
								}
								document.getElementById("li_img"+i).className="tb-selected";
					
							 }
							 
							</script>

							<div class="tb-booth tb-pic tb-s310">
								<embed id="pic" src="pic/dd.mp4" type="video/mp4" style="height:400px;width:400px;" class="jqzoom" />
							</div>
							<ul class="tb-thumb" id="thumblist">
								<li id="li_img1" class="tb-selected">
									<div class="tb-pic tb-s40">
										<img id="pic1" onmouseover="change(1)" src=<%=goods.getImg1() %> >
									</div>
								</li >
								<li id="li_img2">
									<div class="tb-pic tb-s40">
										<img id="pic2" onmouseover="change(2)" src=<%=goods.getImg2() %> >
									</div>
								</li>
								<li id="li_img3">
									<div class="tb-pic tb-s40">
										<img id="pic3" onmouseover="change(3)" src=<%=goods.getImg3() %> >
									</div>
								</li>
							</ul>
						</div>

						<div class="clear"></div>
					</div>

					<div class="clearfixRight">

						<!--规格属性-->
						<!--名称-->
						<div class="tb-detail-hd">
							<h1>	
				<%=goods.getName() %>
	          </h1>
						</div>
						<div class="tb-detail-list">
							<!--价格-->
							<div class="tb-detail-price">
								<li class="price iteminfo_price">
									<dt>促销价</dt>
									<dd><em>¥</em><b class="sys_item_price"><%=goods.getPrice() %></b>  </dd>                                 
								</li>
								<li class="price iteminfo_mktprice">
									<dt>原价</dt>
									<dd><em>¥</em><b class="sys_item_mktprice"><%=goods.getOprice() %></b></dd>									
								</li>
								
								<div class="clear"></div>
							</div>
							
                              
								
							<!--地址-->
							<dl class="iteminfo_parameter freight">
							    
								<dt>配送至</dt>
								<div class="iteminfo_freprice">
									<div class="am-form-content address">
										<select data-am-selected>
											<option value="a">浙江省</option>
											
										</select>
										<select data-am-selected>
											<option value="a">温州市</option>
											
										</select>
										<select data-am-selected>
											<option value="a">瑞安区</option>
											
										</select>
									</div>
									
								</div>
								
							</dl>
							<div class="clear"></div>

							<!--销量-->
							<ul class="tm-ind-panel">
								<li class="tm-ind-item tm-ind-sellCount canClick">
									<div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count"><%=goods.getMonSale() %></span></div>
								</li>
								<li class="tm-ind-item tm-ind-sumCount canClick">
									<div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count"><%=goods.getTotalSale() %></span></div>
								</li>
								<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
									<div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count"><%=goods.getEvaluation() %></span></div>
								</li>
							</ul>
							<div class="clear"></div>

							<!--各种规格-->
							<dl class="iteminfo_parameter sys_item_specpara">
								<dt class="theme-login"><div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div></dt>
								<dd>
									<!--操作页面-->

									<div class="theme-popover-mask"></div>

									<div class="theme-popover">
										<div class="theme-span"></div>
										<div class="theme-poptit">
											<a href="javascript:;" title="关闭" class="close">×</a>
										</div>
										<div class="theme-popbod dform">
											<form class="theme-signin" name="loginform" action="" method="post">

												<div class="theme-signin-left">
												<script>
												function select_taste(){
													
												}
												</script>

													<div class="theme-options">
														<div class="cart-title">口味</div>
														<ul>
															<li class="sku-line">原味<i></i></li>
															<li class="sku-line selected">奶油<i></i></li>
															<li class="sku-line">炭烧<i></i></li>
															<li class="sku-line">咸香<i></i></li>
														</ul>
													</div>
													<script>
													  function addNum(){
														  document.getElementById("text_box").value++;
													  }
													  function subNum(){
														  document.getElementById("text_box").value--;
													  }
													  
													</script>
													<div class="theme-options">
														<div class="cart-title number">数量</div>
														<dd>
															<input id="min" onclick="subNum()" class="am-btn am-btn-default" name="" type="button" value="-" />
															<input id="text_box" name="" type="text" value="1" style="width:30px;height:28px;" />
															<input id="add" onclick="addNum()" class="am-btn am-btn-default" name="" type="button" value="+" />
															<span id="Stock" class="tb-hidden">库存<span class="stock"><%=goods.getNumber() %></span>件</span>
														</dd>

													</div>
													<div class="clear"></div>

													
												</div>
												

											</form>
										</div>
									</div>

								</dd>
							</dl>
							<div class="clear"></div>
							<!--活动	-->
							
						</div>

						<div class="pay">
							
							<li>
								<div class="clearfix tb-btn tb-btn-buy theme-login">
									<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#">立即购买</a>
								</div>
							</li>
							<li>
								<div class="clearfix tb-btn tb-btn-basket theme-login">
									<a id="LikBasket" title="加入购物车" href="javascript:addgoods(<%=goods.getId()%>)"><i></i>加入购物车</a>
								</div>
							</li>
						</div>
<script>
function addgoods(i){
	 var xmlhttp;
	   
		  if (window.XMLHttpRequest)
		  {
		      //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		      xmlhttp=new XMLHttpRequest();
		      
		  }
		  else
		  {
		      // IE6, IE5 浏览器执行代码
		      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		      
		  }

		  xmlhttp.open("POST","shoppingcart",true);
		  xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		  xmlhttp.send("action=addgoods&id="+i);
		  alert("加入购物车成功！");
}
</script>
					</div>

					<div class="clear"></div>

				</div>
     
</body>
</html>