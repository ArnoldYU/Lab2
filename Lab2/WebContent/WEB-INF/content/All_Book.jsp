<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.PreparedStatement
    ,com.mysql.jdbc.Connection,java.sql.SQLException,java.sql.DriverManager"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>查看所有作品信息</title>
</head>
<body class="body_all">
	<div class="all_table" style="right:15%;width:20%;">
		<table class="table table-striped">
			<tr>
				<th>Title</th>
			</tr>
			<s:iterator value="books" var="au"> 
				<tr>
					<td><a href="OneBook?Title=${au.title }+*+${au.authorID }+*+
					${au.publiser }+*+${au.publiserDate }+*+${au.price }+*+${au.isbn }">${au.title }</a></td>
				</tr>
			</s:iterator>
		</table>
	
	</div>
	<%@ include file="leftmenu.jsp" %>
</body>
</html>

			