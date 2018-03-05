<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
@import "css/shoplist_sort.css"
</style>
<title>Insert title here</title>
</head>
<body>
  
  <ul class="shoplist_sort">
  <li class="shoplist_sort" style="margin-left:0px;background:white;" ><a class="shoplist_sort" href="pageServlet?action=default" >综合排序</a></li>
  <li class="shoplist_sort"><a class="shoplist_sort" href="pageServlet?action=priceUp" >价格升序</a></li>
  <li class="shoplist_sort"><a class="shoplist_sort" href="pageServlet?action=priceDown" >价格降序</a></li>
  </ul> 
  <form action="pageServlet" method="get" id="price">
  <ul class="sort_price" style="height:38px;">
  <li class="shoplist_sort"><input name="min_price" class="shoplist_sort" style="margin-left:10px;">-</li>
  <li class="shoplist_sort"><input name="max_price" class="shoplist_sort" ></li>
  <li class="shoplist_sort"><a  href="javascript:document:price.submit();" class="sort_button">确定</a></li>
  </ul>
  <input type="hidden" name="action" value="priceBetween">
  </form>
</body>
</html>