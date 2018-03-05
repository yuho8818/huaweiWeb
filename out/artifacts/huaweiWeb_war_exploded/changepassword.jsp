<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.in {
	height:50px; line-height:50px; text-align:right; padding-right:170px;
}
body{ padding:0; margin:0}
#main { margin:0 auto; width:850px}
.div1{ text-align:left}
</style>
</head>
<body>
<br><br><br><br><br><br>
<form name="changeForm" method="post" action="/houtai/Changepassword" >
      <div style="width:500px;  font-size:14px; margin:60px auto; height:180px">
        <div  class="in">
         管理员
          <input type="text" name="newname" id="newname" style="width:150px" />

        </div>                  
        <div  class="in">新密码
          <input type="password" name="newpassword" id="newpassword"  style="width:150px"/>
        </div>    
                    
        <div  class="in" >
          <input type="submit" name="s" id="s" value="提交"  onClick="javascript:return Judge();" style="width:60px ; height:24px; margin-right:50px" />
          
          

        </div>
      </div>
</form>

</body>
</html>