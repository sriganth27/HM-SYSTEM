package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.entity.User;
import com.db.DBconnect;

/**
 * Servlet implementation class UserRegister

 */

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
    	
    	try 
		{
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("Password");
			
			User u = new User(fullName, email, password);
			UserDao dao = new UserDao(DBconnect.getConn());
			
			HttpSession session = req.getSession();
			boolean f = dao.register(u);
			if(f) {
			 session.setAttribute("sucMsg", "register succesfully");
			 res.sendRedirect("signup.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "some thing wrong on the server");
				res.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			
		}
	}

	}


