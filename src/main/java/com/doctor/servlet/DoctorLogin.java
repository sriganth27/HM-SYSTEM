package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        try {
			
			String email = req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session = req.getSession();
			DoctorDao dao = new DoctorDao(DBconnect.getConn());
			Doctor doctor=dao.login(email, password);
			if(doctor!=null) {
				session.setAttribute("doctObj",  doctor);
				
				resp.sendRedirect("doctor/index.jsp");
			}
			else {
				session.setAttribute("errorMsg", "invalid email & passsword");
				resp.sendRedirect("doctor_login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
       
   
	
	}


