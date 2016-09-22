<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有作品信息</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<th>AuthorID</th>
			<th>Publiser</th>
			<th>PubliserDate</th>
			<th>price</th>
			<th>Title</th>
			<th>ISBN</th>
		</tr>
		<s:iterator value="books" var="au"> 
			<tr>
				<td>${au.authorID}</td>
				<td>${au.publiser}</td>
				<td>${au.publiserDate}</td>
				<td>${au.price}</td>
				<td>${au.title}</td>
				<td>${au.isbn}</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>