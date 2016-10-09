<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.PreparedStatement
    ,com.mysql.jdbc.Connection,java.sql.SQLException,java.sql.DriverManager"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>更改或删除作品信息</title>
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>更改或删除作品信息</title>

</head>
<body class="body_all">
	<div class="all_table">
		<table class="table table-striped">
			<tr>
				<th>Title</th>
				<th>AuthorID</th>
				<th>Publiser</th>
				<th>PubliserDate</th>
				<th>Price</th>
				<th>ISBN</th>
				<th>Function</th>
			</tr>
			<s:iterator value="books" var="au"> 
			<tr>
				<td>${au.title }</td>
				<td>${au.authorID }</td>
				<td>${au.publiser }</td>
				<td>${au.publiserDate }</td>
				<td>${au.price }</td>
				<td>${au.isbn }</td>
				<td><a href="changebook?Title=${au.title }+*+${au.authorID }+*+
					${au.publiser }+*+${au.publiserDate }+*+${au.price }+*+${au.isbn}">change</a>/
					<a href="deletebook?Title=${au.title }+*+${au.authorID }+*+
					${au.publiser }+*+${au.publiserDate }+*+${au.price }+*+${au.isbn}">delete</a>
				</td>
			</tr>
			</s:iterator>
		 </table>
	</div>
	
	<%@ include file="leftmenu.jsp" %>
	
</body>
</html>