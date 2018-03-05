<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Goods"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>返回结果</title>
<style type="text/css">
a.button{
	text-decoration: none;
	padding:2px 5px;
	color:white;
	background: rgba(255, 35, 0, 0.85);
}
</style>
</head>
<center>
<table border=1  align="center">
<tr><th>商品编号</th><th>图片1</th><th>图片2</th><th>图片3</th><th>商品名称</th><th>城市</th><th>数量</th><th>现价</th>
<th>原价</th><th>月销量</th><th>总销量</th><th>评价指数</th><th>删除操作</th><th>修改操作</th></tr>
	<%ArrayList<Goods> list =(ArrayList)request.getAttribute("list");	
		for (int i=0; i<list.size(); i++){
			System.out.println(list.get(i).getName());%>
			<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getPicture()%></td>
			<td><%=list.get(i).getImg1()%></td>
			<td><%=list.get(i).getImg2()%></td>
			<td ><%=list.get(i).getName()%></td>
			<td><%=list.get(i).getCity()%></td>
			<td><%=list.get(i).getNumber()%></td>
			<td><%=list.get(i).getPrice()%></td>
			<td><%=list.get(i).getOprice()%></td>
			<td><%=list.get(i).getMonSale()%></td>
			<td><%=list.get(i).getTotalSale()%></td>
			<td><%=list.get(i).getEvaluation()%></td>
			<td><a class="button" href="Deleteservlet?id=<%=list.get(i).getId() %>">删除</a></td>		
			<td><a class="button" href="Huoquxinxiservlet?id=<%=list.get(i).getId() %>">修改</a></td>
			</tr>
		<%}
	%>
</table>
</center>
</html>