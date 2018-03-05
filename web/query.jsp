<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.search {
	width:100%;
	height:45px;
}

input.search{
	width:60%;
	height:40px;
	margin-left:15%;
	float:left;
	font-size:23px;
	border:2px solid rgb(255, 35, 0);
}
/*button.search{
	float:left;
	height:46px;
	width:8%;
	background-color:rgba(255, 0, 0, 0.82);
	cursor:pointer
	
}*/
a.search{
	color: White;
    background: rgb(255, 35, 0);
    text-decoration: none;
    padding: 15px 35px;
    /* margin-left: 50px; */
    /* margin-top: 40px; */
    /* border-radius: 5px; */
    opacity: 1;
    margin-top:10px;
}
a.button{
    color:white;
    text-decoration: none;
	padding:2px 5px;
	background: rgb(255, 35, 0);
	position:absolute;
left:400px;
top:400px
}
</style>
</head>
<body>
<center>
<br><br><br><br><br><br><br>
<form action="Adquery" method="post" id="name1">
<div class="search" style="margin-top:1px;">
   <input type="text" value="请输入商品名称或关键词查询..." onfocus="if(value=='请输入商品名称或关键词查询...')  {value=''}" onblur="if (value=='') {value='请输入商品名称或关键词查询...'}" class="search" name="keyWord" />
   <div style="float:left;margin-top:14px;">
   <a class="search" href="javascript:document:name1.submit();">搜索</a>
   </div>
</div>
</form>
<br><br><br><br>
<form action="Adquery2" method="post" id="name2">
<div class="search" style="margin-top:1px;">
   <input type="text" value="请输入商品编号查询..." onfocus="if(value=='请输入商品编号查询...')  {value=''}" onblur="if (value=='') {value='请输入商品编号查询...'}" class="search" name="id" />
   <div style="float:left;margin-top:14px;">
   <a class="search" href="javascript:document:name2.submit();">搜索</a>
</div>
</div>
</form>

<h1>
<a class="button" href="adhome.jsp">返回主页面</a>
</h1>

</center>
</body>
</html>





