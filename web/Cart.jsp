<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript">
	function clicked(i) {
		var number=parseInt(document.getElementById("J_SelectedItemsCount").innerHTML);
		var checkbox = document.getElementById("check"+i);
		var money = parseInt(document.getElementById("total" + i).innerHTML);
		var total = parseInt(document.getElementById("totalCost").innerHTML);
		if (checkbox.checked) {
			total = total + money;
			number++;
		} else {
			total = total - money;
			number--;
		}
		document.getElementById("J_SelectedItemsCount").innerHTML = number;
		document.getElementById("totalCost").innerHTML = total;
	}
	function clickall(num) {
		var number=0;
		var total = 0;
		var money;
		var i;
		var checkbox = document.getElementById("checkall");
		if (checkbox.checked) {
			for (i = 0; i < num; i++) {
				document.getElementById("check" + i).checked = true;
				money= parseInt(document.getElementById("total" + i).innerHTML);
				total = total + money;
			}
			number=num;
		} else {
			for (i = 0; i < num; i++) {
				document.getElementById("check" + i).checked = false;
			}
			total = 0;
			number=0;
		}
		document.getElementById("J_SelectedItemsCount").innerHTML = number;
		document.getElementById("totalCost").innerHTML = total;
	}
</script>
        <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="csscopy/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="csscopy/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../js/jquery.js"></script>
<title>购物车</title>
</head>
<body>
	<jsp:include page="Top_bar.jsp"></jsp:include>
	<jsp:include page="Search_bar.jsp"></jsp:include>


	

	<div class="clear"></div>
	<%
		ArrayList<Goods> list = (ArrayList) session.getAttribute("list");
		if (list.size() != 0) {
	%>
	<!--购物车 -->
	<div class="concent">
		<div id="cartTable">
			<div class="cart-table-th">
				<div class="wp">
					<div class="th th-chk">
						<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
					</div>
					<div class="th th-item">
						<div class="td-inner">商品信息</div>
					</div>
					<div class="th th-price">
						<div class="td-inner">单价</div>
					</div>
					<div class="th th-amount">
						<div class="td-inner">数量</div>
					</div>
					<div class="th th-sum">
						<div class="td-inner">金额</div>
					</div>
					<div class="th th-op">
						<div class="td-inner">操作</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>



			<tr class="item-list">
				<div class="bundle  bundle-last ">
					<div class="bundle-hd">
						<div class="bd-promos">
							<div class="bd-has-promo">
								<span class="bd-has-promo-content"></span>&nbsp;&nbsp;
							</div>
							<div class="act-promo"></div>
						</div>
					</div>
					<div class="clear"></div>
					<form action="shoppingcart" method="post" id="goodslist">
					<input name="action" type="hidden" value="payfor">
						<div class="bundle-main">

							<%
								for (int i = 0; i < list.size(); i++) {
										Goods goods = list.get(i);
							%>
							<ul class="item-content clearfix">
								<li class="td td-chk">
									<div class="cart-checkbox ">
										<input type="checkbox" id="check<%=i%>"
											onclick="clicked(<%=i%>)" name="item" value="<%=i%>">
										<label for="J_CheckBox_170037950254"></label>
									</div>
								</li>
								<li class="td td-item">
									<div class="item-pic">
										<img style="width:100%;height:100%;" src="<%=goods.getPicture()%>" class="itempic J_ItemImg">
									</div>
									<div class="item-info">
										<div class="item-basic-info">
											<%=goods.getName()%>
										</div>
									</div>
								</li>
								<li class="td td-info">
									<div class="item-props item-props-can">
										<span class="sku-line"></span> <span class="sku-line"></span>
										<span tabindex="0" class="btn-edit-sku theme-login"></span> <i
											class="theme-login am-icon-sort-desc"></i>
									</div>
								</li>
								<li class="td td-price">
									<div class="item-price price-promo-promo">
										<div class="price-content">
											<div class="price-line">
												<em class="price-original"><%=goods.getPrice() * 2%></em>
											</div>
											<div class="price-line">
												<em class="J_Price price-now" tabindex="0"><%=goods.getPrice()%></em>
											</div>
										</div>
									</div>
								</li>
								<li class="td td-amount">
									<div class="amount-wrapper ">
										<div class="item-amount ">
											<div class="sl">

												<a class="subadd"
													href="shoppingcart?action=sub&id=<%=goods.getId()%>">-</a>
												<%=goods.getNumber()%>
												<a class="subadd"
													href="shoppingcart?action=add&id=<%=goods.getId()%>">+</a>
											</div>
										</div>
									</div>
								</li>
								<li class="td td-sum">
									<div class="td-inner">
										<em id=total<%=i%>><%=goods.getPrice() * goods.getNumber()%></em>
									</div>
								</li>
								<li class="td td-op">
									<div class="td-inner">
										<a class="delete"
											href="shoppingcart?action=delete&id=<%=goods.getId()%>">删除</a>
									</div>
								</li>
							</ul>

							<%
								}
							%>

							<div class="clear"></div>
							<div class="float-bar-wrapper">
								<div id="J_SelectAll2" class="select-all J_SelectAll">
									<div class="cart-checkbox">
										<input class="checkall" id="checkall" name="select-all"
											value="true" type="checkbox"
											onclick="clickall(<%=list.size()%>)"> <label
											for="J_SelectAllCbx2"></label>
									</div>
									<span>全选</span>
								</div>
								<div class="operations">
									<a href="#" hidefocus="true" class="deleteAll">删除</a>
								</div>
								<div class="float-bar-right">
									<div class="amount-sum">
										<span class="txt">已选商品</span> <em id="J_SelectedItemsCount">0</em><span
											class="txt">件</span>
										<div class="arrow-box">
											<span class="selected-items-arrow"></span> <span
												class="arrow"></span>
										</div>
									</div>
									<div class="price-sum">
										<span class="txt">合计:</span> <strong class="price">￥<em
											id="totalCost">0.00</em></strong>
									</div>
									<div class="btn-area">


										<span><a href="javascript:document:goodslist.submit();">结&nbsp;算</a></span>



									</div>
								</div>

							</div>


							<%
								} else {
									out.print("<center><h1>购物车是空的！</h1></center>");
								}
							%>
						</div>
					</form>
				</div>
		</div>
	</div>

	<!--操作页面-->

	<div class="theme-popover-mask"></div>

	<div class="theme-popover">
		<div class="theme-span"></div>
		<div class="theme-poptit h-title">
			<a href="javascript:;" title="关闭" class="close">×</a>
		</div>
		<div class="theme-popbod dform"></div>
	</div>
	<!--引导 -->
	<div class="navCir">
		<li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
		<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
		<li class="active"><a href="shopcart.html"><i
				class="am-icon-shopping-basket"></i>购物车</a></li>
		<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
	</div>

</body>
</html>