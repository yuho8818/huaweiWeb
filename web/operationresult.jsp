<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% String status = (String)request.getAttribute("result"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<br><br><br>
<h1><%out.println(status); %></h1>
<h1>
<a href="query.jsp">返回搜索页面</a>
</h1>
<h1>
<a href="adhome.jsp">返回主页面</a>
</h1>
</center>
</body>
</html>