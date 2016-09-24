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
			<%
				try{
				String driver="com.mysql.jdbc.Driver";
				String url="jdbc:mysql://localhost:3306/author";
				String username="root";
				String password="arnold-huang-123";
				Connection conn=null;
				conn = (Connection) DriverManager.getConnection(url, username, password);
				String sql="select * from authors";
				PreparedStatement pstmt;
				pstmt = (PreparedStatement)conn.prepareStatement(sql);
		        ResultSet rs = pstmt.executeQuery();
		        while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><a href="changeauthor?authorID=<%=rs.getString(1)%>">change</a>/
					<a href="deleteauthor?Allauthor=<%=rs.getString(1)+"*"+rs.getString(2)+"*"+rs.getString(3)+"*"+rs.getString(4)%>">delete</a>
				</td>
			</tr>
			<%
		        }
				rs.close();
				pstmt.close();
			    conn.close();
				}catch(Exception e){
				e.printStackTrace();
				}
		    %>   
		 </table>
	</div>
	
	<%@ include file="leftmenuauthor.jsp" %>
	
</body>
</html>