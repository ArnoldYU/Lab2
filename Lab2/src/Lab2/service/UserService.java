package Lab2.service;

import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import Lab2.domin.User;

public class UserService {
	private static Connection getConn() {
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/User";
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
	private static Integer getAll(User user) {
	    Connection conn = getConn();
	    String sql = "select * from states";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        //userDb.add(new User(1,"sun","123"));
	        while(rs.next()){
	        	//userDb.add(new User(rs.getInt(1),rs.getString(2),rs.getString(3)));
	        	if(rs.getString(2).equals(user.getName())&&rs.getString(3).equals(user.getPass()))
	        		return rs.getInt(1);
	        }
	        return -1;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
	private static int insert(User user) {
	    Connection conn = getConn();
	    int i = 0;
	    String sql = "insert into states ('name','pass') values(?,?)";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, user.getName());
	        pstmt.setString(2, user.getPass());
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return i;
	}
	static List<User> userDb;
	static{
		userDb=new ArrayList<>();
		//userDb.add(new User(1,"sun","123"));
	}
	
	public Integer validateLogic(User user){
//		for(User u:userDb){
//			if(u.equals(user)){
//				return u.getId();
//			}
//		}
//		return -1;
		return getAll(user);
	}
	public void addUser(User user) {
//		user.setId(new Random().nextInt(99999));
//		userDb.add(user);
		Connection conn = getConn();
		String sql = "insert into states (name,pass) values(?,?)";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, user.getName());
	        pstmt.setString(2, user.getPass());
	        pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
}
