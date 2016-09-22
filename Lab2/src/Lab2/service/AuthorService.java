package Lab2.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import Lab2.domin.Author;
import Lab2.domin.User;

public class AuthorService {
	static List<Author> authorDb;
	
	static {
		authorDb=new ArrayList<>();
		//authorDb.add(new Author("110","sun",19,"China"));
	}
	
	public Integer validateAuthor(Author author) {
		return getAll(author);
	}

	public void addAuthor(Author author) {
		// TODO Auto-generated method stub
		//authorDb.add(author);
		Connection conn = getConn();
		String sql = "insert into authors (AuthorID,name,Age,Country) values(?,?,?,?)";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, author.getAuthorID());
	        pstmt.setString(2, author.getName());
	        pstmt.setInt(3, author.getAge());
	        pstmt.setString(4, author.getCountry());
	        pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	public List<Author> getAllAuthors() {
		Connection conn = getConn();
	    String sql = "select * from authors";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()){
	        	authorDb.add(new Author(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4)));
	        }	
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return authorDb;
	}
	//打开数据库
	private static Connection getConn() {
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/author";
	    String username = "root";
	    String password = "arnold-huang-123";
	    Connection conn = null;
	    try {
	        Class.forName(driver); //classLoader,加载对应驱动
	        conn = (Connection) DriverManager.getConnection(url, username, password);
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return conn;
	}
	//从数据库中查找数据
	private static Integer getAll(Author author) {
	    Connection conn = getConn();
	    String sql = "select * from authors";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()){
	        	if(rs.getString(1).equals(author.getAuthorID())&&rs.getString(2).equals(author.getName()))
	        		return 1;
	        }
	        return -1;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
}
