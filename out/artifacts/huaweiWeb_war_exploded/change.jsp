<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<%Goods good=new Goods();
good=(Goods)request.getAttribute("good");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br>
<center>
<form action="Changeservlet" method="post" name="form1">
<table>
<tr><td>商品编号<td><td><input name="id" id="id" value="<%=good.getId() %>"></td></tr>
<tr><td>商品名称<td><td><input name="name" id="name" value="<%=good.getName() %>"></td></tr>
<tr><td>地点城市<td><td><input name="city" id="city" value="<%=good.getCity() %>"></td></tr>
<tr><td>商品数量<td><td><input name="number" id="number" value="<%=good.getNumber() %>"></td></tr>
<tr><td>商品价格<td><td><input name="price" id="price" value="<%=good.getPrice() %>"></td></tr>
<tr><td>商品图片<td><td><input name="picture" id="picture" value="<%=good.getPicture() %>"></td></tr>
<tr><td>img1<td><td><input name="img1" id="img1" value="<%=good.getImg1() %>"></td></tr>
<tr><td>img2<td><td><input name="img2" id="img2" value="<%=good.getImg2() %>"></td></tr>
<tr><td>原价<td><td><input name="Oprice" id="Oprice" value="<%=good.getOprice() %>"></td></tr>
<tr><td>月销量<td><td><input name="monSale" id="monSale" value="<%=good.getMonSale() %>"></td></tr>
<tr><td>总销量<td><td><input name="totalSale" id="totalSale" value="<%=good.getTotalSale() %>"></td></tr>
<tr><td>评价指数<td><td><input name="evaluation" id="evaluation" value="<%=good.getEvaluation() %>"></td></tr>
</table>
<br><br>
<input type="submit" name="submit" value="提交" style="width:60px ; height:30px; margin-right:50px"/>
<br><br>
</form>
</center>
</body>
</html>