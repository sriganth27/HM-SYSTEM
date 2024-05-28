package com.admin.serevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBconnect;
import com.entity.Doctor;
@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
	   
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName =req.getParameter("fullname");
			String dob =req.getParameter("dob");
			String qualification =req.getParameter("qualification");
			String specialist =req.getParameter("spec");
			String mail =req.getParameter("email");
			String mobNo =req.getParameter("mobno");
			String password =req.getParameter("password");
			int id= Integer.parseInt(req.getParameter("id"));
			
			Doctor d= new Doctor(id,fullName, dob, qualification, specialist, mail, mobNo, password);
			DoctorDao dao = new DoctorDao(DBconnect.getConn());
			HttpSession session = req.getSession();
			
			if(dao.updateDoctor(d)) {
				session.setAttribute("sucMsg", "Doctor Update Succesfully");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			else {
				session.setAttribute("errorMsg", "something went wrong");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			
			
		} catch (Exception e) {
			
			
			e.printStackTrace();
		}
	}
		
	}

