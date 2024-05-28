package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBconnect;
@WebServlet("/changePassword")
public class changePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldPassword =req.getParameter("Oldpassword");
		String newPassword =req.getParameter("Newpassword");
		
		
		UserDao dao = new UserDao(DBconnect.getConn());
		HttpSession session = req.getSession();
		
		if(dao.CheckOldPassword(uid, oldPassword)) {
			
			if(dao.CheckNewPassword(uid, newPassword))
			{
				session.setAttribute("sucMsg", "password Change succesfully");
				resp.sendRedirect("changepassword.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something went wrong on the server");
				resp.sendRedirect("changepassword.jsp");
			}
		}
		else {
			session.setAttribute("errorMsg", "Old Password incorrect");
			resp.sendRedirect("changepassword.jsp");
			
		}
	}

}
