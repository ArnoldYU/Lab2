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
		authorDb.add(new Author("110","sun",19,"China"));
	}

	public Integer validateAuthor(Author author) {
		return getAll(author);
	}

	public void addAuthor(Author author) {
		// TODO Auto-generated method stub
		authorDb.add(author);
	}

	public List<Author> getAllAuthors() {
		// TODO Auto-generated method stub
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
