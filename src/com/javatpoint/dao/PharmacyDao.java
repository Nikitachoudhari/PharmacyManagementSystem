package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Pharmacy;

public class PharmacyDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","edac20");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Pharmacy u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into pharmacy(patientname,disease,doctorName,gender,date) values(?,?,?,?,?)");
		ps.setString(1,u.getPatientname());
		ps.setString(2,u.getDisease());
		ps.setString(3,u.getDoctorName());
		ps.setString(4,u.getGender());
		ps.setString(5,u.getDate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int update(Pharmacy u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update pharmacy set patientname=?,disease=?,doctorName=?,gender=?,date=? where id=?");
		ps.setString(1,u.getPatientname());
		ps.setString(2,u.getDisease());
		ps.setString(3,u.getDoctorName());
		ps.setString(4,u.getGender());
		ps.setString(5,u.getDate());
		ps.setInt(6,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int delete(Pharmacy u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from pharmacy where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}


public static List<Pharmacy> getAllRecords(){
	List<Pharmacy> list=new ArrayList<Pharmacy>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from pharmacy");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Pharmacy u=new Pharmacy();
			u.setId(rs.getInt("id"));
			u.setPatientname(rs.getString("patientname"));
			u.setDisease(rs.getString("disease"));
			u.setDoctorName(rs.getString("doctorName"));
			u.setGender(rs.getString("gender"));
			u.setDate(rs.getString("date"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Pharmacy getRecordById(int id){
	Pharmacy u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from pharmacy where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Pharmacy();
			u.setId(rs.getInt("id"));
			u.setPatientname(rs.getString("patientname"));
			u.setDisease(rs.getString("disease"));
			u.setDoctorName(rs.getString("doctorName"));
			u.setGender(rs.getString("gender"));
			u.setDate(rs.getString("date"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
