<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style type="text/css">
@import "css/login.css"
</style>
<title>Insert title here</title>
</head>

  <form action="LoginServlet" method="post" id="login_form">
    <div class="userlogin" id="userlogin" style="display:none" >
      <div class="row1">
                            登陆窗口<a class="close_button" href="javascript:exit1()">×</a>
       </div>
      <div class="row2" style="margin-top:40px;">
            <img src="img/phone.png"/><span>
              <input name="phone" style="height:40px;" class="phone" type="text"/>               </span>
       </div >
       <div class="row2">
            <img src="img/password.png"/><span>
               <input name="password" style="height:40px;" class="password" type="password" /></span>
       </div>
       <div class="row2" style="margin-top:30px;">
        <a class="button" href="javascript:document:login_form.submit();">登陆</a>
       </div>
    
    </div>
  
  </form>

</html>