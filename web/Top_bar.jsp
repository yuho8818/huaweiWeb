<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/Top_bar.js"></script>
<style type="text/css" >
@import "css/Top_bar.css";
</style>
<title>Insert title here</title>
</head>
<body>
 <div class="top_bar">

<div class="top_bar_left" style="text-align:center">
  <%if(session.getAttribute("username")== null){
	  if(session.getAttribute("status")=="notExist"){ %>
	   <a class="top" href="home.jsp">首页</a>
       <a class="top"  href="javascript:login()" >登陆</a>
       <a class="top" href="register_table.jsp" >注册</a>
       <script>window.alert("用户不存在！");</script>
	  <%}else{%>
	   <a class="top" href="home.jsp">首页</a>
       <a class="top"  href="javascript:login()" >登陆</a>
       <a class="top" href="register_table.jsp" >注册</a>
	  <%} %> 
  <% }else{
     if(session.getAttribute("status")=="success"){%>
      <a class="top" href="home.jsp">首页</a>
	  <a href="editinf.jsp" ><font><%=session.getAttribute("username")%></font></a>您好！
	  <a class="top" href="LogoutServlet"  >注销</a>
      <%}else if(session.getAttribute("status")=="failed"){%>
    	  <a class="top" href="home.jsp">首页</a>
       <a class="top"  href="javascript:login()" >登陆</a>
       <a class="top" href="register_table.jsp" >注册</a>
       <script>window.alert("密码错误！");</script>
      <%} %>
    <%} %> 
</div>
    <%if(request.getAttribute("check") == "请先登录"){ %>
    <script type="text/javascript">window.alert("请先登录");</script>
    <%} %>
<div class="top_bar_right">
   <a class="top" href="CartServlet" ><img src="img/buslogo.jpg">购物车</a>
   <a class="top" href="Order?action=show" >已淘宝贝</a>
</div>
</div>
</body>
</html>