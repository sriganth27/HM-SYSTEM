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
@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		int id = Integer.parseInt(req.getParameter("id"));
		 DoctorDao dao = new DoctorDao(DBconnect.getConn());
		 HttpSession session = req.getSession();
		if(dao.deleteDoctor(id)) {
			session.setAttribute("sucMsg", "Doctor delete Succesfully");
			resp.sendRedirect("admin/view_doctor.jsp");
		}
		else {
			session.setAttribute("errorMsg", "something went wrong");
			resp.sendRedirect("admin/view_doctor.jsp");
		}
		
	}
}
