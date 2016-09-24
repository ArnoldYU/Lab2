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
			%>
				<tr>
					<td><a href="OneBook?Title=<%=rs.getString(5)%>"><%=rs.getString(5)%></a></td>
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
	<%@ include file="leftmenu.jsp" %>
</body>
</html>

			