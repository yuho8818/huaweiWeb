<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="pojo.userAddress"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="csscopy/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="csscopy/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="jscopy/address.js"></script>
<title>支付页面</title>
</head>
<body>
     <jsp:include page="Top_bar.jsp"></jsp:include>
     <jsp:include page="Search_bar.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="concent">
		<!--地址 -->
		<%
		{
			int total = 0;
		%>
		<div class="paycont">
			<div class="address">
				<h3>确认收货地址</h3>
				<div class="control">
					<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
				</div>
				<%ArrayList<userAddress> list =(ArrayList) session.getAttribute("list"); %>
				<div class="clear"></div>
				<ul>
					<div class="per-border"></div>
					<%for(int i=0;i<list.size();i++){
						if(list.get(i).isIfdefault()){%>
					
					<li class="user-addresslist defaultAddr">

						<div class="address-left">
							<div class="user DefaultAddr">

								<span class="buy-address-detail"> <span class="buy-user"><%=list.get(i).getName() %>
								</span> <span class="buy-phone"><%=list.get(i).getPhone() %></span>
								</span>
							</div>
							<div class="default-address DefaultAddr">
								<span class="buy-line-title buy-line-title-type">收货地址：</span> <span
									class="buy--address-detail"> <span class="province"><%=list.get(i).getProvince() %></span>省
									<span class="city"><%=list.get(i).getCity() %></span>市 <span class="dist"><%=list.get(i).getTown() %></span>区 <span
									class="street"><%=list.get(i).getDeadress() %></span>
								</span> </span>
							</div>
							<ins class="deftip">默认地址</ins>
						</div>
						<div class="address-right">
							<a href="../person/address.html"> <span
								class="am-icon-angle-right am-icon-lg"></span></a>
						</div>
						<div class="clear"></div>

						<div class="new-addr-btn">
							 <a href="user?action=deleteaddress&path=paybus.jsp&id=<%=list.get(i).getId() %>"
								onclick="delClick(this);">删除</a>
						</div>

					</li>
					<%}else{ %>
					<div class="per-border"></div>
					<li class="user-addresslist">
						<div class="address-left">
							<div class="user DefaultAddr">

								<span class="buy-address-detail"> <span class="buy-user"><%=list.get(i).getName() %>
								</span> <span class="buy-phone"><%=list.get(i).getPhone() %></span>
								</span>
							</div>
							<div class="default-address DefaultAddr">
								<span class="buy-line-title buy-line-title-type">收货地址：</span> <span
									class="buy--address-detail"> <span class="province"><%=list.get(i).getProvince() %></span>省
									<span class="city"><%=list.get(i).getCity() %></span>市 <span class="dist"><%=list.get(i).getTown() %></span>区 <span
									class="street"><%=list.get(i).getDeadress() %></span>
								</span> </span>
							</div>
							<ins class="deftip hidden">默认地址</ins>
						</div>
						<div class="address-right">
							<span class="am-icon-angle-right am-icon-lg"></span>
						</div>
						<div class="clear"></div>

						<div class="new-addr-btn">
							<a href="user?action=setdefault&path=paybus.jsp&id=<%=list.get(i).getId() %>">设为默认</a>  <span class="new-addr-bar">|</span> <a
								href="user?action=deleteaddress&path=paybus.jsp&id=<%=list.get(i).getId() %>" onclick="delClick(this);">删除</a>
						</div>

					</li>
                   <%}} %>
				</ul>

				<div class="clear"></div>
			</div>
			<!--订单 -->
			<div class="concent">
				<div id="payTable">
					<h3>确认订单信息</h3>
					<div class="cart-table-th">
						<div class="wp">

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
							<div class="th th-oplist">
								<div class="td-inner">配送方式</div>
							</div>

						</div>
					</div>
					<div class="clear"></div>
					<%
					ArrayList<Goods> paylist = (ArrayList) session.getAttribute("paylist");
					Goods goods;
						for (int i = 0; i < paylist.size(); i++) {
							goods = paylist.get(i);
							total += goods.getPrice() * goods.getNumber();
					%>
					<tr class="item-list">
						<div class="bundle  bundle-last">

							<div class="bundle-main">
								<ul class="item-content clearfix">
									<div class="pay-phone">
										<li class="td td-item">
											<div class="item-pic">
												<img alt="" style="width:100%;height:100%;" src="<%=goods.getPicture()%>" >
											</div>
											<div class="item-info">
												<div class="item-basic-info">
													<a href="#" class="item-title J_MakePoint"
														data-point="tbcart.8.11"><%=goods.getName()%></a>
												</div>
											</div>
										</li>
										<li class="td td-info">
											<div class="item-props">
												<span class="sku-line"></span> <span
													class="sku-line"></span>
											</div>
										</li>
										<li class="td td-price">
											<div class="item-price price-promo-promo">
												<div class="price-content">
													<em class="J_Price price-now"><%=goods.getPrice()%></em>
												</div>
											</div>
										</li>
									</div>
									<li class="td td-amount">
										<div class="amount-wrapper ">
											<div class="item-amount ">
												<span class="phone-title">购买数量</span>
												<div class="sl">
													<%=goods.getNumber()%>
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<em tabindex="0" class="J_ItemSum number"><%=goods.getPrice()*goods.getNumber()%></em>
										</div>
									</li>
									<li class="td td-oplist">
										<div class="td-inner">
											<span class="phone-title">配送方式</span>
											<div class="pay-logis">
												快递<b class="sys_item_freprice">10</b>元
											</div>
										</div>
									</li>

								</ul>
								<div class="clear"></div>

							</div>
					</tr>
					<%
						}
%>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>










			<div class="pay-total">
				<!--留言-->
				<div class="order-extra">
					<div class="order-user-info">
						<div id="holyshit257" class="memo">
							<label>买家留言：</label> <input type="text"
								title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）"
								placeholder="选填,建议填写和卖家达成一致的说明"
								class="memo-input J_MakePoint c2c-text-default memo-close">
							<div class="msg hidden J-msg">
								<p class="error">最多输入500个字符</p>
							</div>
						</div>
					</div>

				</div>


				<div class="clear"></div>
			</div>
			<!--含运费小计 -->
			<div class="buy-point-discharge ">
				<p class="price g_price ">
					合计 <span>¥</span><em class="pay-sum"><%=total+paylist.size()*10%></em>
					
				</p>
			</div>

			<!--信息 -->
			<div class="order-go clearfix">
				<div class="pay-confirm clearfix">
					<div class="box">
						<div tabindex="0" id="holyshit267" class="realPay">
							<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
								<em class="style-large-bold-red " id="J_ActualFee"><%=total+paylist.size()*10%></em>
								<%int money = total+paylist.size()*10 ; %>
							</span>
						</div>

						<div id="holyshit268" class="pay-address">
						<%int addressId = 0; %>
                           <%for(int i=0;i<list.size();i++){
                        	  if(list.get(i).isIfdefault()){%>
                           
							<p class="buy-footer-address">
								<span class="buy-line-title buy-line-title-type">寄送至：</span> <span
									class="buy--address-detail"> <span class="province"><%=list.get(i).getProvince() %></span>省
									<span class="city"><%=list.get(i).getCity() %></span>市 <span class="dist"><%=list.get(i).getTown() %></span>区 <span
									class="street"><%=list.get(i).getDeadress() %></span>
								</span>
							</p>
							<p class="buy-footer-address">
								<span class="buy-line-title">收货人：</span> <span
									class="buy-address-detail"> <span class="buy-user"><%=list.get(i).getName() %>
								</span> <span class="buy-phone"><%=list.get(i).getPhone() %></span>
								</span>
							</p>
							<%addressId = list.get(i).getId(); %>
							<%}} %>
						</div>
					</div>

					<div id="holyshit269" class="submitOrder">
						<div class="go-btn-wrap">
							<a href="Order?action=pay&money=<%=money%>&addressId=<%=addressId%>">提交订单</a>
							
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<%
}
%>
		<div class="clear"></div>
	</div>
	<div class="theme-popover-mask"></div>
	<div class="theme-popover">

		<!--标题 -->
		<div class="am-cf am-padding">
			<div class="am-fl am-cf">
				<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add
					address</small>
			</div>
		</div>
		<hr />
 
		<div class="am-u-md-12">
			<form class="am-form am-form-horizontal" id="formx" action="user" method="get">
                   <input type="hidden" name="action" value="editaddress">
                   <input type="hidden" name="path" value="paybus.jsp">
				<div class="am-form-group">
					<label for="user-name" class="am-form-label">收货人</label>
					<div class="am-form-content">
						<input type="text" name="name" id="user-name" placeholder="收货人">
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-phone" class="am-form-label">手机号码</label>
					<div class="am-form-content">
						<input id="user-phone" name="phone" placeholder="手机号必填" type="email">
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-phone" class="am-form-label">所在地</label>
					<div class="am-form-content address">
						<select name="province" data-am-selected>
							<option value="浙江省">浙江省</option>
							<option value="湖北省">湖北省</option>
						</select> <select name="city" data-am-selected>
							<option value="温州市">温州市</option>
							<option value="武汉市">武汉市</option>
						</select > <select name="town" data-am-selected>
							<option value="瑞安区">瑞安区</option>
							<option value="洪山区">洪山区</option>
						</select>
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-intro" class="am-form-label">详细地址</label>
					<div class="am-form-content">
						<textarea name="deaddress" class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
						<small>100字以内写出你的详细地址...</small>
					</div>
				</div>
                
				<div class="am-form-group theme-poptit">
					<div class="am-u-sm-9 am-u-sm-push-3">
						<div class="am-btn am-btn-danger"><a href="javascript:document:formx.submit();">保存</a></div>
						<div class="am-btn am-btn-danger close">取消</div>
					</div>
				</div>
			</form>
		</div>

	</div>

	<div class="clear"></div>
</body>
</html>