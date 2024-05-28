package com.admin.serevlet;

import java.io.IOException;
import java.net.PasswordAuthentication;
import java.util.*;
import java.io.*;
import javax.mail.*;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;


@WebServlet("/sendmail")
public class sendmail extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    String name , email , subject , massage;
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String comm= req.getParameter("comm");
		name= req.getParameter("name");
		email= req.getParameter("email");
	    subject= req.getParameter("subject");
		massage= req.getParameter("messege");
		
	final String username ="hospitalvkp03@gmail.com";
	final String password ="qlcinpvkshlvxbwa";
	Properties props = new Properties();
	props.put("mail.smtp.auth", true);
	props.put("mail.smtp.starttls.enable", true);
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "587");
	
    Session session = Session.getDefaultInstance(props, new Authenticator() {
    	@Override
    	protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
    		// TODO Auto-generated method stub
    		return new javax.mail.PasswordAuthentication(username, password);
    	}
	});
	
	try {
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(username));
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
		MimeBodyPart textpart = new MimeBodyPart();
		Multipart multipart = new MimeMultipart();
		String final_text = comm ;
		textpart.setText(final_text);
		message.setSubject(subject);
		multipart.addBodyPart(textpart);
		message.setContent(multipart);
		message.setSubject("Contact Details");
		
		Transport.send(message);
		out.println("<center> <h2> Email has been sent to "+name+" succesfully.</h2></center>");
		
		
	} catch (Exception e) {
		out.println(e);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
}
