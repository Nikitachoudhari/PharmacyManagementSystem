package in.edac.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","edac20");
	}catch(Exception e){System.out.println(e);}
	return con;
}


public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from user");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setEmail(rs.getString("email"));
			u.setMobile(rs.getString("mobile"));
			
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

}
