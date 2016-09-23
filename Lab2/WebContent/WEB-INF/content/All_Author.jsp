<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>用户登录</title>
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>查看所有作者信息</title>

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

	<div class="navbox">
		<ul class="nav">
			<li><a href="Menu">Menu</a></li>
			<li><a href="changeauthor">Update Author</a></li>
			<li><a href="Delete_Author">Delete Author</a></li>
			<li><a href="Search_Author">Search Author</a></li>
			<li><a href="#">Help</a></li>
			<li><a href="home">Exit</a></li>
		</ul>
	</div>
	
</body>
</html>