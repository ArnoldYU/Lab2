<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.PreparedStatement
    ,com.mysql.jdbc.Connection,java.sql.SQLException,java.sql.DriverManager"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>查看所有作者信息</title>
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>查看所有作者信息</title>
<!-- String url="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_arnoldhby";
				String username=System.getenv("z44xwmx111");
				String password=System.getenv("wi51kxyy5m3y5hkzh34iii5kzmkhkx043yxm0wl0");
				String dbUrl = String.format("jdbc:mysql://%s:%s/%s", System.getenv("MYSQL_HOST"), System.getenv("MYSQL_PORT"), System.getenv("MYSQL_DB"));
				Connection conn=null; -->
</head>
<body class="body_all">
	<div class="all_table">
		<table class="table table-striped">
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
	</div>

	<%@ include file="leftmenuauthor.jsp" %>
	
</body>
</html>