package Lab2.service;

import java.io.UnsupportedEncodingException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import Lab2.domin.Author;
import Lab2.domin.Book;

public class BookService {

	public Integer validateBook(Book book){
		return getAll(book);
	}
	public void addBook(Book book) {
		PreparedStatement str;
		Connection conn = getConn();
		String sql = "insert into books (authorID,publiser,publiserDate,price,title,isbn) values(?,?,?,?,?,?)";
	    PreparedStatement pstmt;
	    int yes=1;
	    try {
	    	str = (PreparedStatement)conn.prepareStatement("select * from books");
	    	ResultSet rs = str.executeQuery();
	    	while(rs.next()){
	    		if(book.getAuthorID().equals(rs.getString(1))&&book.getPubliser().equals(rs.getString(2))&&book.getPubliserDate().equals(rs.getString(3))&&book.getPrice()==rs.getDouble(4)&&book.getTitle().equals(rs.getString(5))&&book.getIsbn().equals(rs.getString(6))){
	    			yes=0;
	    			break;
	    		}
	    	}
	    	if(yes==1){
	    		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		        pstmt.setString(1, book.getAuthorID());
		        pstmt.setString(2, book.getPubliser());
		        pstmt.setString(3, book.getPubliserDate());
		        pstmt.setDouble(4, book.getPrice());
		        pstmt.setString(5, book.getTitle());
		        pstmt.setString(6, book.getIsbn());
		        pstmt.executeUpdate();
		        pstmt.close();
	    	}
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	public List<Book> getAllBooks() {
		List<Book> bookDb;
		bookDb=new ArrayList<>();
		Connection conn = getConn();
	    String sql = "select * from books";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        bookDb.clear();
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
	public List<Book> getAuthorBooks(Author author) {
		List<Book> authorbookDb;
		authorbookDb=new ArrayList<>();
		Connection conn = getConn();
	    String sql = "select * from books";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()){
	        	//if(rs.getString(1).equals(author.getAuthorID()))
	        		authorbookDb.add(new Book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6)));
	        }	
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return authorbookDb;
	}
	public Integer changebook(Book book){
		Connection conn = getConn();
	    int i = 0,j=0,z=0;
	    String authorID=book.getAuthorID();
	    String Publiser=book.getPubliser();
	    String PubliserDate=book.getPubliserDate();
	    String ISBN =book.getIsbn();
	    try {
	    	authorID  = new String (authorID.getBytes("ISO8859-1"),"UTF-8");
	    	Publiser  = new String (Publiser.getBytes("ISO8859-1"),"UTF-8");
	    	PubliserDate  = new String (PubliserDate.getBytes("ISO8859-1"),"UTF-8");
	    	ISBN  = new String (ISBN.getBytes("ISO8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	   
	    String sql1 = "update books set authorID='" + authorID + "' where title='" + book.getTitle() + "'";
	    String sql2 = "update books set publiser='" + Publiser + "'where title='" + book.getTitle() + "'";
	    String sql3 = "update books set publiserDate='" + PubliserDate + "' where title='" + book.getTitle() + "'";
	    String sql4 = "update books set price='" + book.getPrice() + "' where title='" + book.getTitle() +"'";
	    String sql5 = "update books set country='" + ISBN + "' where title='" + book.getTitle()+"'";
	    PreparedStatement pstmt1;
	    PreparedStatement pstmt2;
	    PreparedStatement pstmt3;
	    PreparedStatement pstmt4;
	    PreparedStatement pstmt5;
	    try {
	        pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
	        pstmt2 = (PreparedStatement) conn.prepareStatement(sql2);
	        pstmt3 = (PreparedStatement) conn.prepareStatement(sql3);
	        pstmt4 = (PreparedStatement) conn.prepareStatement(sql4);
	        pstmt5 = (PreparedStatement) conn.prepareStatement(sql5);
	        i = pstmt1.executeUpdate();
	        j = pstmt2.executeUpdate();
	        z = pstmt3.executeUpdate();
	        System.out.println("resutl: " + i+j+z);
	        pstmt1.close();
	        pstmt2.close();
	        pstmt3.close();
	        pstmt4.close();
	        pstmt5.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return i;
	}
	public void deleteAuthor(Book book) {
		Connection conn = getConn();
		int i = 0;
		String booktitle=book.getTitle();
		try {
			booktitle  = new String(booktitle.getBytes("ISO8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		String sql = "delete from books where title='" + booktitle + "'";
		PreparedStatement pstmt;
		try {
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		i = pstmt.executeUpdate();
		System.out.println("resutl: " + i);
		pstmt.close();
		conn.close();
		} catch (SQLException e) {
		e.printStackTrace();
		}

	}
}
