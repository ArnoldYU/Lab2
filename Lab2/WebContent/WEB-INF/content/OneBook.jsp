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
	book  = new String(book.getBytes("ISO8859-1"),"UTF-8");
	%>
<div>
<div class="all_table" style="width:30%;right:17%;top:20%;height:40%;font-size:1em">
<%
	try{
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/book";
		String username="root";
		String password="arnold-huang-123";
		Connection conn=null;
		conn = (Connection) DriverManager.getConnection(url, username, password);
		String sql="select * from books";
		PreparedStatement pstmt;
		pstmt = (PreparedStatement)conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while(rs.next()){
		    if(rs.getString(5).equals(book)){
%>
		<table class="table ">
			<tr><th>Title</th><td><%=rs.getString(5)%></td></tr>
			<tr><th>AuthorID</th><td><%=rs.getString(1)%></td></tr>
			<tr><th>Publiser</th><td><%=rs.getString(2)%></td></tr>
			<tr><th>PubliserDate</th><td><%=rs.getString(3)%></td></tr>
			<tr><th>Price</th><td><%=rs.getString(4)%></td></tr>
			<tr><th>ISBN</th><td><%=rs.getString(6)%></td></tr>
		 </table>
		 <%
		        }
		        }
				rs.close();
				pstmt.close();
			    conn.close();
				}catch(Exception e){
				e.printStackTrace();
				}
		    %>   
	</div>
	<a href="All_Book" class="btn" style="position:absolute;top:90%;right:20%;">Back</a>
</div>


</body>
</html>