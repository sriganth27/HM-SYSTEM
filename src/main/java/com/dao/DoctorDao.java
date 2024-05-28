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

import com.entity.Doctor;

public class DoctorDao {

	private static final ServletRequest request = null;
	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}
		
	



public boolean registerDoctor(Doctor d) {
	 boolean f = false;
	 
	 try {
		 
		 String sql =" insert into doctor(full_name, dob, qualification,specialist, email, mobno ,password) values(?,?,?,?,?,?,?)";
		 PreparedStatement ps = conn.prepareStatement(sql);
		 ps.setString(1, d.getFullName());
		 ps.setString(2, d.getDob());
		 ps.setString(3, d.getQualification());
		 ps.setString(4, d.getSpecialist());
		 ps.setString(5, d.getEmail());
		 ps.setString(6, d.getMobNo());
		 ps.setString(7, d.getPassword());
		 
		 int i = ps.executeUpdate();
		 if(i==1) {
			 f=true;
		 }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;	
	 
 }

  public List<Doctor> getAllDoctors(){
	  List<Doctor> list = new ArrayList<Doctor>();
	  Doctor d = null;
	  try {
		  
		  String sql = "select * from doctor order by id desc";
		  PreparedStatement ps = conn.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();
		  
		  while(rs.next())
		  {
			  d = new Doctor();
			  d.setId(rs.getInt(1));
			  d.setFullName(rs.getString(2));
			  d.setDob(rs.getString(3));
			  d.setQualification(rs.getString(4));
			  d.setSpecialist(rs.getString(5));
			  d.setEmail(rs.getString(6));
			  d.setMobNo(rs.getString(7));
			  d.setPassword(rs.getString(8));
			  list.add(d);
		  }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	return list;
  }
  
  public Doctor getDoctorById(int id){
	  
	  Doctor d = null;
	  try {
		  
		  String sql = "select * from doctor where id=?";
		  PreparedStatement ps = conn.prepareStatement(sql);
		  ps.setInt(1, id);
		  ResultSet rs = ps.executeQuery();
		  
		  while(rs.next())
		  {
			  d = new Doctor();
			  d.setId(rs.getInt(1));
			  d.setFullName(rs.getString(2));
			  d.setDob(rs.getString(3));
			  d.setQualification(rs.getString(4));
			  d.setSpecialist(rs.getString(5));
			  d.setEmail(rs.getString(6));
			  d.setMobNo(rs.getString(7));
			  d.setPassword(rs.getString(8));
			  
		  }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	return d;
  }
  
  public boolean updateDoctor(Doctor d) {
		 boolean f = false;
		 
		 try {
			 
			 String sql ="update doctor set full_name=?, dob=?, qualification=?,specialist=?, email=?, mobno=? ,password=? where id=?";
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, d.getFullName());
			 ps.setString(2, d.getDob());
			 ps.setString(3, d.getQualification());
			 ps.setString(4, d.getSpecialist());
			 ps.setString(5, d.getEmail());
			 ps.setString(6, d.getMobNo());
			 ps.setString(7, d.getPassword());
			 ps.setInt(8, d.getId());
			 int i = ps.executeUpdate();
			 
			 if(i==1) {
				 f=true;
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;	
		 
	 }
  
  public boolean  deleteDoctor(int id) {
	  boolean f =false;
	  
	  try {
		 String sql = "delete from doctor where id=?";
		 PreparedStatement ps = conn.prepareStatement(sql);
		 ps.setInt(1,id);
		 
		 int i = ps.executeUpdate();
		 if(i==1) {
			 f = true;
		 }
		 
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;
	  
  }
  
  public Doctor login(String email , String password) {
	  Doctor d = null;
	  
	  try {
	  String sql = "select * from doctor where email=? and password=?";
	  PreparedStatement ps = conn.prepareStatement(sql);
	  ps.setString(1, email);
	  ps.setString(2, password);
	  ResultSet rs = ps.executeQuery();
	  
	  while(rs.next())
	  {
		  d = new Doctor();
		  d.setId(rs.getInt(1));
		  d.setFullName(rs.getString(2));
		  d.setDob(rs.getString(3));
		  d.setQualification(rs.getString(4));
		  d.setSpecialist(rs.getString(5));
		  d.setEmail(rs.getString(6));
		  d.setMobNo(rs.getString(7));
		  d.setPassword(rs.getString(8));
		  
	  }
	
    } catch (Exception e) {
	  e.printStackTrace();
}
	  
	return d;
	  
  }
  
  
  public int countDoctor() {
	  
	int i =0;
	
	try {
		 
		  String sql = "select * from doctor";
		  PreparedStatement ps = conn.prepareStatement(sql);
		 
		  ResultSet rs = ps.executeQuery();
		  
		  while(rs.next())
		  {
			  i++;
		  }
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
  }
  public int countAppoinmnet() {
	  
		int i =0;
		
		try {
			 
			  String sql = "select * from appoinment";
			  PreparedStatement ps = conn.prepareStatement(sql);
			 
			  ResultSet rs = ps.executeQuery();
			  
			  while(rs.next())
			  {
				  i++;
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	  }
  public int countUser() {
	  
		int i =0;
		
		try {
			 
			  String sql = "select * from user";
			  PreparedStatement ps = conn.prepareStatement(sql);
			 
			  ResultSet rs = ps.executeQuery();
			  
			  while(rs.next())
			  {
				  i++;
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	  }
  public int countSpecialist() {
	  
		int i =0;
		
		try {
			 
			  String sql = "select * from specialist";
			  PreparedStatement ps = conn.prepareStatement(sql);
			 
			  ResultSet rs = ps.executeQuery();
			  
			  while(rs.next())
			  {
				  i++;
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	  }
  
  public int countAppoinmnetByDoctorId(int did) {
	  
		int i =0;
		
		try {
			 
			  String sql = "select * from appoinment where doctor_id=?";
			  PreparedStatement ps = conn.prepareStatement(sql);
			  ps.setInt(1, did);
			  ResultSet rs = ps.executeQuery();
			  
			  while(rs.next())
			  {
				  i++;
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	  }
  public List<Doctor> getAllDoctorssamp(){
	  List<Doctor> list = new ArrayList<Doctor>();
	  Doctor d = null;
	  try {
		  
		  
		  String sql = "select * from doctor where fullname like '%"+request.getParameter("Search")+"%' ";
		  PreparedStatement ps = conn.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();
		  
		  while(rs.next())
		  {
			  d = new Doctor();
			  d.setId(rs.getInt(1));
			  d.setFullName(rs.getString(2));
			  d.setDob(rs.getString(3));
			  d.setQualification(rs.getString(4));
			  d.setSpecialist(rs.getString(5));
			  d.setEmail(rs.getString(6));
			  d.setMobNo(rs.getString(7));
			  d.setPassword(rs.getString(8));
			  list.add(d);
		  }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	return list;
  }
  
}










