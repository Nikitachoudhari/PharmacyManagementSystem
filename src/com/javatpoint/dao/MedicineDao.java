package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Medicine;
import com.javatpoint.bean.Pharmacy;

public class MedicineDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","edac20");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Medicine u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into medicine(medicinename,drugType,company,price,quantity ) values(?,?,?,?,?)");
		ps.setString(1,u.getMedicinename());
		ps.setString(2,u.getDrugType());
		ps.setString(3,u.getCompany());
		ps.setInt(4,u.getPrice());
		ps.setString(5,u.getQuantity());
	
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int update(Medicine u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update medicine set medicinename=?,drugType=?,company=?,price=?,quantity=? where id=?");
		ps.setString(1,u.getMedicinename());
		ps.setString(2,u.getDrugType());
		ps.setString(3,u.getCompany());
		ps.setInt(4,u.getPrice());
		ps.setString(5,u.getQuantity());
		
		ps.setInt(8,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int delete(Medicine u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from medicine where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}


public static List<Medicine> getAllRecords(){
	List<Medicine> list=new ArrayList<Medicine>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from medicine");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Medicine u=new Medicine();
			u.setId(rs.getInt("id"));
			u.setMedicinename(rs.getString("medicinename"));
			u.setDrugType(rs.getString("drugType"));
			u.setCompany(rs.getString("company"));
			u.setPrice(rs.getInt("price"));
			u.setQuantity(rs.getString("quantity"));
		
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Medicine getRecordById(int id){
	Medicine u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from medicine where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Medicine();
			u.setId(rs.getInt("id"));
			u.setMedicinename(rs.getString("medicinename"));
			u.setDrugType(rs.getString("drugType"));
			u.setCompany(rs.getString("company"));
			u.setPrice(rs.getInt("price"));
			u.setQuantity(rs.getString("quantity"));
		
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
