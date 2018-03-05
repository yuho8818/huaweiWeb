<%@page import="page.PageView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
@import "basic/css/demo.css";
@import "AmazeUI-2.4.2/assets/css/amazeui.css";
</style>




<style type="text/css">
@import "css/shoplist.css"
</style>
<script type="text/javascript">

 function topage(currentpage) {
  var form = document.forms[2];
  form.currentpage.value = currentpage;
  form.submit();
 }
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
<script type="text/javascript" src=""></script>
<style type="text/css">
@import ""
</style>
<title>商品列表</title>
</head>
<body>
   <jsp:include page="Top_bar.jsp"></jsp:include>
   <jsp:include page="Search_bar.jsp"></jsp:include>
   <!--  <div style="margin-left:15%;height:40px;width:80%;margin-top:50px;">
   <jsp:include page="shoplist_sort.jsp"></jsp:include>
   </div>
    -->
    
    <div class="nav-table" style="width:100%;margin-top:30px;margin-bottom:0px;">
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
    <div style="height:2px;width:100%;border-bottom: 2px solid #d2364c;margin-top:0px;"></div>
    
   <div class="shoplist">
   
   
        
       <table class="shoplist" >
       <tr ><td style="width:900px;">
       
       <jsp:include page="shoplist_sort.jsp"></jsp:include>
       
       </td>
       </tr>
									

									<!-- 商品循环开始 -->
									<%

                                             ArrayList<Goods> list =(ArrayList)session.getAttribute("list");
											 if(list.size()>=8){
									%>
                                    <%for(int i=0;i<2;i++){ %>
									<tr>
									   <%for(int j=0;j<4;j++){ %>
									   
										<td>
										<div class="goods">
										<img alt="" src="<%=list.get(i*4+j).getPicture() %>" >
										<% String names1 = list.get(i*4+j).getName();%>
										<div style="height:25px;"><span class="price"><font ><strong>$<%out.print(list.get(i*4+j).getPrice()); %></strong></font></span>
										<span class="stock"><font>库存<%out.print(list.get(i*4+j).getNumber()); %></font></span> </div>
										<div><a href="DetailServlet?id=<%=list.get(i*4+j).getId() %>" target="_blank"><%out.print(names1); %></a></div>
										<div ><span >发货地:<%out.print(list.get(i*4+j).getCity()); %></span>
										<span><a class="button" onclick="js_method()" href="javascript:addgoods(<%=list.get(i*4+j).getId() %>)">加入购物车</a></span></div>
										</div>
										</td>
										<%} %>
															
									</tr>
                                     <%} %>
									<%}else if(list.size()>4){ %>
										<tr>
										 <%for(int j =0;j<4;j++){ %>
										  <td >
										<div class="goods">
										<img alt="" src="<%=list.get(j).getPicture() %>" >
										<% String names1 = list.get(j).getName();%>
										<div style="height:25px;"><span class="price"><font ><strong>$<%out.print(list.get(j).getPrice()); %></strong></font></span>
										<span class="stock"><font>库存<%out.print(list.get(j).getNumber()); %></font></span> </div>
										<div><a href="DetailServlet?id=<%=list.get(j).getId() %>" target="_blank"><%out.print(names1); %></a></div>
										<div ><span >发货地:<%out.print(list.get(j).getCity()); %></span>
										<span><a class="button" href="shoppingcart?action=addgoods&id=<%= list.get(j).getId()%>">加入购物车</a></span></div>
										</div>
										</td>
										  <%} %>		
										</tr>
										<tr>
										<%for(int i=0;i<list.size()-4;i++){ %>									
										   <td >
										<div class="goods">
										<img alt="" src="<%=list.get(i).getPicture() %>" >
										<% String names1 = list.get(i).getName();%>
										<div style="height:25px;"><span class="price"><font ><strong>$<%out.print(list.get(i).getPrice()); %></strong></font></span>
										<span class="stock"><font>库存<%out.print(list.get(i).getNumber()); %></font></span> </div>
										<div><a href="DetailServlet?id=<%=list.get(i).getId() %>" target="_blank"><%out.print(names1); %></a></div>
										<div ><span >发货地:<%out.print(list.get(i).getCity()); %></span>
										<span><a class="button" href="shoppingcart?action=addgoods&id=<%= list.get(i).getId()%>">加入购物车</a></span></div>
										</div>
										</td>		
										<%} %>
										</tr>
									<%}else if(list.size()<=4){ %>
									<tr>
									   <%for(int i=0;i<list.size();i++){ %>
									      <td >
										<div class="goods">
										<img alt="" src="<%=list.get(i).getPicture() %>" >
										<% String names1 = list.get(i).getName();%>
										<div style="height:25px;"><span class="price"><font ><strong>$<%out.print(list.get(i).getPrice()); %></strong></font></span>
										<span class="stock"><font>库存<%out.print(list.get(i).getNumber()); %></font></span> </div>
										<div><a href="DetailServlet?id=<%=list.get(i).getId() %>" target="_blank"><%out.print(names1); %></a></div>
										<div ><span >发货地:<%out.print(list.get(i).getCity()); %></span>
										<span><a class="button" href="shoppingcart?action=addgoods&id=<%= list.get(i).getId()%>">加入购物车</a></span></div>
										</div>
										</td>
										<%} %>
								    </tr>
									<%}%>

								</table>
								

<div algin="right" class="bottom">
 <% PageView view = (PageView)session.getAttribute("pageView");
    
 for(int i=view.getStartindex();i<=view.getEndindex();i++){ 
    if(i==view.getCurrentpage()){%>
    <a class="page" style="color:black;" ><%=i %></a>
    <%}else{%>
    <a class="page1" href="javascript:topage('<%=i%>')"><%=i%></a>
    <%}} %>
    <div class="pageshow" >  总共<%=view.getTotalpagenumber() %>页</div> 
</div>								
	<!--  						
<div align="right" class="bottom">
     <c:forEach begin="${pageView.startindex}" end="${pageView.endindex}"
   var="wp">
   <c:if test="${pageView.currentpage==wp}">
    <a class="page" >${wp}</a>
   </c:if>
   <c:if test="${pageView.currentpage!=wp}">
   
    <a class="page" href="javascript:topage('${wp}')">${wp}</a>

   </c:if>
  </c:forEach>
       <div style="float:left;vertical-align:bottom;">  总共${pageView.totalpagenumber}页</div>                      
    </div>	-->	
    <form action="pageServlet" method="post">
       <input type="hidden" name="currentpage" />
       <input type="hidden" name="action" value="<%=request.getAttribute("action")%>">
       <input type="hidden" name="min_price" value="<%=request.getAttribute("min_price")%>">
       <input type="hidden" name="max_price" value="<%=request.getAttribute("max_price")%>">				
	</form>		 
   </div>

</body>
</html>