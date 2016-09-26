<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.PreparedStatement
    ,com.mysql.jdbc.Connection,java.sql.SQLException,java.sql.DriverManager"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>更改或删除作者信息</title>
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>更改或删除作者信息</title>

</head>
<body class="body_all">
	<div class="all_table">
		<table class="table table-striped">
			<tr>
				<th>AuthorID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Country</th>
				<th>Function</th>
			</tr>
			<s:iterator value="authors" var="au"> 
			<tr>
				<td>${au.authorID }</td>
				<td>${au.name }</td>
				<td>${au.age }</td>
				<td>${au.country }</td>
				<td><a href="changeauthor?authorID=${au.authorID }">change</a>/
					<a href="deleteauthor?Allauthor=${au.authorID }+*+${au.name }+*+${au.age }+*+${au.country }">delete</a>
				</td>
			</tr>
			</s:iterator>
		 </table>
	</div>
	
	<%@ include file="leftmenuauthor.jsp" %>
	
</body>
</html>