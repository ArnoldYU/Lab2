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
	String book=request.getParameter("Allbook");
  	String []bookDb =book.split("\\*");
  	System.out.print(bookDb);
  	bookDb[0]  = new String(bookDb[0].getBytes("ISO8859-1"),"UTF-8");
  	bookDb[1]  = new String(bookDb[1].getBytes("ISO8859-1"),"UTF-8");
  	bookDb[3]  = new String(bookDb[2].getBytes("ISO8859-1"),"UTF-8");
  	bookDb[4]  = new String(bookDb[4].getBytes("ISO8859-1"),"UTF-8");
  	bookDb[5]  = new String(bookDb[5].getBytes("ISO8859-1"),"UTF-8");
	%>
<div>
<div class="all_table" style="width:30%;right:17%;top:20%;height:40%;font-size:1em">
		<table class="table ">
			<tr><th>Title</th><td><%=bookDb[4]%></td></tr>
			<tr><th>AuthorID</th><td><%=bookDb[0]%></td></tr>
			<tr><th>Publiser</th><td><%=bookDb[1]%></td></tr>
			<tr><th>PubliserDate</th><td><%=bookDb[2]%></td></tr>
			<tr><th>Price</th><td><%=bookDb[3]%></td></tr>
			<tr><th>ISBN</th><td><%=bookDb[5]%></td></tr>
		 </table>
		 
	</div>
	<a href="All_Book" class="btn" style="position:absolute;top:90%;right:20%;">Back</a>
</div>


</body>
</html>