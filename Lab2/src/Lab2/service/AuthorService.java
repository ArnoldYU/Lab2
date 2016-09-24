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

public class AuthorService {
	static List<Author> authorDb;
	
	static {
		authorDb=new ArrayList<>();
		//authorDb.add(new Author("110","sun",19,"China"));
	}
	//查询作者信息是否存在
	public Integer validateAuthor(Author author) {
		return getAll(author);
	}
	//增加作者信息
	public void addAuthor(Author author) {
		// TODO Auto-generated method stub
		//authorDb.add(author);
		Connection conn = getConn();
		PreparedStatement str;
		int yes=1;
		String sql = "insert into authors (authorID,name,age,country) values(?,?,?,?)";
	    PreparedStatement pstmt;
	    try {
	    	str = (PreparedStatement)conn.prepareStatement("select * from authors");
	    	ResultSet rs = str.executeQuery();
	    	while(rs.next()){
	        	//userDb.add(new User(rs.getInt(1),rs.getString(2),rs.getString(3)));
	    		if(author.getAuthorID().equals(rs.getString(1))&&author.getAge()==rs.getString(3)&&author.getCountry().equals(rs.getString(4))&&author.getName().equals(rs.getString(2))){
    				yes=0;
    				break;
    			}
	        }
	    	if(yes==1){
	    		pstmt = (PreparedStatement) conn.prepareStatement(sql);
	 	        pstmt.setString(1, author.getAuthorID());
	 	        pstmt.setString(2, author.getName());
	 	        pstmt.setString(3, author.getAge());
	 	        pstmt.setString(4, author.getCountry());
	 	        pstmt.executeUpdate();
	 	        pstmt.close();
	    	}
	       
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	//获得所有作者的信心并且打印到jsp上
	public List<Author> getAllAuthors() {
		Connection conn = getConn();
	    String sql = "select * from authors";
	    PreparedStatement pstmt;
	    
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        authorDb.clear();
	        while(rs.next()){
	        	authorDb.add(new Author(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
	        }	
	        pstmt.close();
	        conn.close();
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
	        pstmt.close();
	        return -1;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return -1;
	}

	public Integer changeAuthor(Author author){
		Connection conn = getConn();
	    int i = 0,j=0,z=0;
	    String Name=author.getName();
	    String Age=author.getAge();
	    String Country=author.getCountry();
	    try {
			Name  = new String (Name.getBytes("ISO8859-1"),"UTF-8");
			Age  = new String (Age.getBytes("ISO8859-1"),"UTF-8");
			Country  = new String (Country.getBytes("ISO8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	   
	    String sql1 = "update authors set name='" + Name + "' where authorID='" + author.getAuthorID() + "'";
	    String sql2 = "update authors set age='" + Age + "'where authorID='" + author.getAuthorID() + "'";
	    String sql3 = "update authors set country='" + Country + "' where authorID='" + author.getAuthorID() + "'";
	    PreparedStatement pstmt1;
	    PreparedStatement pstmt2;
	    PreparedStatement pstmt3;
	    try {
	        pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
	        pstmt2 = (PreparedStatement) conn.prepareStatement(sql2);
	        pstmt3 = (PreparedStatement) conn.prepareStatement(sql3);
	        i = pstmt1.executeUpdate();
	        j = pstmt2.executeUpdate();
	        z = pstmt3.executeUpdate();
	        System.out.println("resutl: " + i+j+z);
	        pstmt1.close();
	        pstmt2.close();
	        pstmt3.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return i;
	}
	public Integer deleteAuthor(Author author){
		Connection conn = getConn();
	    int i = 0;
	    String sql = "delete from authors where authorID='" + author.getAuthorID() + "'";
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
	    return i;
	}
}
