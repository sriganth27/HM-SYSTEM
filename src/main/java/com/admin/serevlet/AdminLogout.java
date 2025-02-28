package com.admin.serevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogout
 */
@WebServlet("/adminLogout")
public class AdminLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session= req.getSession();
		session.removeAttribute("adminObj");
		session.setAttribute("sucMsg", "Admin Logout Succesfully");
		res.sendRedirect("admin_login.jsp");
		
	}


}
