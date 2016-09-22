package Lab2.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import Lab2.domin.Book;

public class BookService {
	static List<Book> bookDb;
	static {
		bookDb=new ArrayList<>();
		//bookDb.add(new Book("111","1",new Date(),11,"1","1"));
	}
	public Integer validateBook(Book book){
		return getAll(book);
	}
	public void addBook(Book book) {
		Connection conn = getConn();
		String sql = "insert into books (authorID,publiser,publiserDate,price,title,isbn) values(?,?,?,?,?,?)";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, book.getAuthorID());
	        pstmt.setString(2, book.getPubliser());
	        pstmt.setString(3, book.getPubliserDate());
	        pstmt.setDouble(4, book.getPrice());
	        pstmt.setString(5, book.getTitle());
	        pstmt.setString(6, book.getIsbn());
	        pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	public List<Book> getAllBooks() {
		Connection conn = getConn();
	    String sql = "select * from books";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()){
	        	bookDb.add(new Book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6)));
	        }	
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return bookDb;
	}
	//打开数据库
	private static Connection getConn() {
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/book";
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
	private static Integer getAll(Book book) {
	    Connection conn = getConn();
	    String sql = "select * from books";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()){
	        	if(rs.getString(1).equals(book.getAuthorID()))
	        		return 1;
	        }
	        return -1;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
}
