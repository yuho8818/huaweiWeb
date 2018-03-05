<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

</script>
<style type="text/css">
@import "css/Search_bar.css";
</style>
<title>Insert title here</title>
</head>
<body class="search">
<div class="search_bar">
<form action="pageServlet" method="post" id="search_form">
<div class="search" style="margin-top:1px;">

   <input class="search" name="keyWord"/>
   <a class="search" style="font-size:18px;height:44px;" href="javascript:document:search_form.submit()">搜索</a> 
      
   
</div>
<input type="hidden" name="action" value="default">
</form>
</div>
</body>
</html>