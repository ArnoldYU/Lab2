<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有作者信息</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<th>AuthorID</th>
			<th>Name</th>
			<th>Age</th>
			<th>Country</th>
		</tr>
		<s:iterator value="authors" var="au"> 
			<tr>
				<td>${au.authorID}</td>
				<td>${au.name}</td>
				<td>${au.age}</td>
				<td>${au.country}</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>