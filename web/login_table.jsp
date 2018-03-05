<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
@import "css/login_table.css";
</style>
<title>Insert title here</title>
</head>
<body>
    
  <form id="login_form" action="LoginServlet" method="post">
    <table class="imformation">
    <tr>
    <td>邮箱地址： </td>
    <td><input type="text" name="phone" class="phone" id="phone"/></td>
    </tr>  
    
    <tr>
    <td>密 &nbsp;&nbsp;码： </td>
    <td><input type="password" name="password" class="password" id="password"/></td>
    </tr>
    </table>
    
     <div class="login">
          <a href=" javascript:document:login_form.submit();" class="login_button">登录</a>
      </div>  
  </form>
</body>
</html>