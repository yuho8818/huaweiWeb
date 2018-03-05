<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理系统</title>
<style>
.in {
	height:50px; line-height:50px; text-align:right; padding-right:170px;
}
body{ padding:0; margin:0}
#main { margin:0 auto; width:850px}
.div1{ text-align:left}
</style>
<script language="JavaScript">
function Judge(){
	var WebUserNO,userpw
	WebUserNO=document.all["adname"].value;
	userpw=document.all["password"].value;
	if(WebUserNO=="")
	  	{alert("登录用户不能为空！");
	   document.all["adname"] .focus();
	   return false;
	   }
	if(userpw=="")
		{
		alert("密码不能为空！");
		document.all["password"] .focus();
		return false;
		}
}

</script>

</head>
<body>
<br><br><br><br><br><br>
<form name="LoginForm" method="post" action="Adloginservlet" >
      <div style="width:500px;  font-size:14px; margin:60px auto; height:180px">
        <div  class="in">
         管理员
          <input type="text" name="adname" id="adname" style="width:150px" />

        </div>                  
        <div  class="in">密&nbsp;&nbsp;码
          <input type="password" name="password" id="password"  style="width:150px"/>
        </div>    
                    
        <div  class="in" >
          <input type="submit" name="s" id="s" value="登录"  onClick="javascript:return Judge();" style="width:60px ; height:24px; margin-right:20px" />
          
          <a href="changepassword.jsp"><input type="button" name="button" id="button" value="忘记密码" style="width:100px ; height:24px"  /></a>

        </div>
      </div>
    </form>

</body>
</html>
