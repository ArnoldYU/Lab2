<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.PreparedStatement
    ,com.mysql.jdbc.Connection,java.sql.SQLException,java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="mystyle.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>作品详情</title>
</head>
<body class="body_onebook" style="font-size:13px">
<%
	String book=request.getParameter("Title");
	String []bookDb =book.split("\\*");
	System.out.print(bookDb[5]);

	%>
<div>
<div class="all_table" style="width:30%;right:17%;top:20%;height:40%;font-size:1em">

		<table class="table ">
			<tr><th>Title</th><td><%=bookDb[0]%></td></tr>
			<tr><th>AuthorID</th><td><%=bookDb[1]%></td></tr>
			<tr><th>Publiser</th><td><%=bookDb[2]%></td></tr>
			<tr><th>PubliserDate</th><td><%=bookDb[3]%></td></tr>
			<tr><th>Price</th><td><%=bookDb[4]%></td></tr>
			<tr><th>ISBN</th><td><%=bookDb[5]%></td></tr>
		 </table>

	</div>
	<a href="viewBooks" class="btn" style="position:absolute;top:90%;right:20%;">Back</a>
</div>


</body>
</html>