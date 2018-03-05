<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
@import "css/register_table.css";
</style>
<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
    
    <div class="Top_bar">
    <jsp:include page="Top_bar.jsp"></jsp:include>
    </div>
    
   <div class="title"><img src="img/logo.jpg"/>用户注册</div>
    
   <div class="line"></div>
   
   <div class="middle">
   
   <img src="img/big.jpg" class="big_img">
   <div class="login_right">
   <form id="register_form" action="RegisterServlet" method="post">
   <div style="margin-bottom:40px;"><strong style="font-size:22px;">邮箱注册</strong></div>
   <div>
    <table class="register_imformation">
    
    <tr>
    <td class="text" >用户名：&nbsp; </td>
    <td><input class="register" type="text" name="username" class="username" id="username"  /></td>
    </tr>
    
    <tr>
    <td class="text">密 &nbsp;&nbsp;码： </td>
    <td><input class="register" type="password" name="password" class="password" id="password"/></td>
    </tr>
    
    
    <tr>
    <td class="text">邮箱地址：&nbsp; </td>
    <td><input class="register" type="text" name="email_address" class="email_address" id="email_address"/></td>
    </tr>   
    </table>
    </div>
     <div style="margin-left:10px;"><input style="margin-top:0px;" class="checkbox" type="checkbox">
      <a href="">点击表示您同意商城《服务协议》</a></div>
      <!--  <button class="register">注册</button>-->
      <div style="margin-top:30px;">
      <a class="button" href="javascript:document:register_form.submit();">注册</a>
      </div>
  </form>
  </div>
   </div>
</body>
</html>