package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userLogout")
public class UserLogout  extends HttpServlet{
protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session= req.getSession();
		session.removeAttribute("userObj");
		session.setAttribute("sucMsg", "User Logout Succesfully");
		res.sendRedirect("user_login.jsp");
		
	}
}
