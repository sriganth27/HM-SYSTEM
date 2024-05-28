package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.entity.Appoinment;

public class AppoinmentDao {
 
	private static final ServletRequest request = null;
	private Connection conn;

	public AppoinmentDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addAppoinment(Appoinment ap) {
		boolean f = false;
		try {
			
			String sql = "insert into appoinment(user_id,fullname, gender, age, appoint_date, email,phno,diseases, doctor_id, address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ap.getUserId());
			ps.setString(2, ap.getFullName() );
			ps.setString(3, ap.getGender() );
			ps.setString(4, ap.getAge());
			ps.setString(5, ap.getAppoinDate());
			ps.setString(6, ap.getEmail() );
			ps.setString(7, ap.getPhnNo());
			ps.setString(8, ap.getDiseases());
			ps.setInt(9, ap.getDoctorId());
			ps.setString(10, ap.getAddress());
			ps.setString(11, ap.getStatus());
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		 return f;
	}
	
	public List<Appoinment> getAllAppointmentByLoginUser(int userId){
		
		List<Appoinment> list= new ArrayList<Appoinment>();
		Appoinment ap = null;
		
		
		try {
			String sql ="select * from appoinment where user_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ap = new Appoinment();
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhnNo(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorId(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
		
	
public List<Appoinment> getAllAppointmentByDoctorLogin(int doctorId){
		
		List<Appoinment> list= new ArrayList<Appoinment>();
		Appoinment ap = null;
		
		
		try {
			String sql ="select * from appoinment where  doctor_id =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,  doctorId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ap = new Appoinment();
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhnNo(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorId(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
public Appoinment getAllAppointmentById(int id){
	
	
	Appoinment ap = null;
	
	
	try {
		String sql ="select * from appoinment where  id =?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1,  id);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			ap = new Appoinment();
			ap.setId(rs.getInt(1));
			ap.setUserId(rs.getInt(2));
			ap.setFullName(rs.getString(3));
			ap.setGender(rs.getString(4));
			ap.setAge(rs.getString(5));
			ap.setAppoinDate(rs.getString(6));
			ap.setEmail(rs.getString(7));
			ap.setPhnNo(rs.getString(8));
			ap.setDiseases(rs.getString(9));
			ap.setDoctorId(rs.getInt(10));
			ap.setAddress(rs.getString(11));
			ap.setStatus(rs.getString(12));
			
			
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ap;
	
}
public boolean updateCommentStatus(int id , int doctId , String comm ) {
	boolean f = false;
	try {
		
		String sql = "update appoinment set status=? where id=? and doctor_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, comm );
		ps.setInt(2, id);
		ps.setInt(3, doctId);
		
	
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	 return f;
}
public List<Appoinment> getAllAppointment(){
	
	List<Appoinment> list= new ArrayList<Appoinment>();
	Appoinment ap = null;
	
	
	try {
		
		String sql ="select * from appoinment order by id desc ";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			ap = new Appoinment();
			ap.setId(rs.getInt(1));
			ap.setUserId(rs.getInt(2));
			ap.setFullName(rs.getString(3));
			ap.setGender(rs.getString(4));
			ap.setAge(rs.getString(5));
			ap.setAppoinDate(rs.getString(6));
			ap.setEmail(rs.getString(7));
			ap.setPhnNo(rs.getString(8));
			ap.setDiseases(rs.getString(9));
			ap.setDoctorId(rs.getInt(10));
			ap.setAddress(rs.getString(11));
			ap.setStatus(rs.getString(12));
			list.add(ap);
			
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
	
}

public List<Appoinment> getAllAppointmentdoc(){
	
	List<Appoinment> list= new ArrayList<Appoinment>();
	Appoinment ap = null;
	
	
	try {
		String sql = "select * from appoinment where fullname like '%"+request.getParameter("Search")+"%' ";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			ap = new Appoinment();
			ap.setId(rs.getInt(1));
			ap.setUserId(rs.getInt(2));
			ap.setFullName(rs.getString(3));
			ap.setGender(rs.getString(4));
			ap.setAge(rs.getString(5));
			ap.setAppoinDate(rs.getString(6));
			ap.setEmail(rs.getString(7));
			ap.setPhnNo(rs.getString(8));
			ap.setDiseases(rs.getString(9));
			ap.setDoctorId(rs.getInt(10));
			ap.setAddress(rs.getString(11));
			ap.setStatus(rs.getString(12));
			list.add(ap);
			
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
	
}

}
