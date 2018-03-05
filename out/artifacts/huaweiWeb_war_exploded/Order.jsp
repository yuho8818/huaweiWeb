<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="pojo.Order"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="csscopy/orstyle.css" rel="stylesheet" type="text/css">

		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<title>订单</title>
</head>
<body>
		<!--头 -->
		<jsp:include page="Top_bar.jsp" ></jsp:include>
		<jsp:include page="Search_bar.jsp" ></jsp:include>
		
		
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="home.jsp"><a href="#">首页</a></li>
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

					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有订单</a></li>
								
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									
									<%ArrayList<Order> list=(ArrayList<Order>)session.getAttribute("list"); %>

									<div class="order-main">
										<div class="order-list">
											
											<!--交易成功-->
											<%for(int i = 0;i<list.size();i++){ %>
											<div class="order-status5" id="order<%=list.get(i).getOrderId()%>">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;"><%=list.get(i).getOrderId() %></a></div>
													<span><%=list.get(i).getTime() %></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
													<%for(int j = 0;j<list.get(i).getPaiedlist().size();j++){ %>
														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src=<%=list.get(i).getPaiedlist().get(j).getPicture() %> style="width:100%;height:100%;" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p><%=list.get(i).getPaiedlist().get(j).getName() %></p>
																			
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<%=list.get(i).getPaiedlist().get(j).getPrice() %>
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span><%=list.get(i).getPaiedlist().get(j).getNumber() %>
																</div>
															</li>
															<li class="td td-operation">
																<div class="item-operation">
																	
																</div>
															</li>
														</ul>
														<%} %>
													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：<%=list.get(i).getMoney() %>
																
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">交易成功</p>
																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
																	<p class="order-info"><a href="logistics.html">查看物流</a></p>
																</div>
															</li>
															<li class="td td-change">
																<a href="javascript:deleteorder(<%=list.get(i).getOrderId()%>)" onclick="js_method()"><div class="am-btn am-btn-danger anniu" >
																	删除订单</div></a>
															</li>
															
														</div>
													</div>
												</div>
											</div>
											<%} %>
											<script>
											   function deleteorder(i){
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

													  xmlhttp.open("POST","Order",true);
													  xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
													  xmlhttp.send("action=delete&orderId="+i);
													  var orderitem = document.getElementById("order"+i);
													  orderitem.parentNode.removeChild(orderitem);
													  alert("删除成功");
											   }
											</script>

										</div>

									</div>

								</div>
								
								
								

								
							</div>

						</div>
					</div>
				</div>
				
			</div>
			<jsp:include page="menu.jsp" ></jsp:include>
		</div>

	</body>
</html>