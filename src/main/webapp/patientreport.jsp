<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
  <%@page import="java.sql.*"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.admin.serevlet.Addspecialist"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Appoinment"%>
<%@page import="com.dao.AppoinmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <p class="fa2 fs-3 text-center">patient details</p>
     
<%
        if(request.getParameter("Search")==null){%>
        
        <table class="table table-striped table-bordered tab" >
			    <thead class="hd">
			     <tr>
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">Gender</th>
			   		<th scope="col">Age</th>
			   		<th scope="col">Appointment Date</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob No</th>
			   		<th scope="col">Diseases</th>
			   		<th scope="col">Doctor Name</th>
			   		<th scope="col">Address</th>
			   		
			   		
			    </tr>
			   </thead>
			<tbody>
			   <%
			   response.setContentType("application/vnd.ms-excel");
				response.setHeader("Content-Disposition","inline; filename=patientreport.xls");
			    AppoinmentDao dao = new AppoinmentDao(DBconnect.getConn());
			    DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
			    List<Appoinment> list = dao.getAllAppointment();
			    
			   for(Appoinment ap:list)
				
			   {
				   Doctor d = dao2.getDoctorById(ap.getDoctorId());
			    %>
			   <tr>
			   <td><%=ap.getFullName() %></td>
			   <td><%=ap.getGender() %></td>
			   <td><%=ap.getAge()%></td>	
			   <td><%=ap.getAppoinDate() %></td>
			  <td><%=ap.getEmail() %></td>
			   <td><%=ap.getPhnNo() %></td>
			    <td><%=ap.getDiseases() %></td>
			   <td><%=d.getFullName() %></td>
			   <td><%=ap.getAddress() %></td>
			 
		
			   </tr>
				   
				   
			   <%}
			   
			   %>
			   </tbody>
	
		   </table>
		
	
<%}
else{%>
	<table class="table table-striped table-bordered tab">
			    
			     <thead class="hd">
			     <tr>
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">Gender</th>
			   		<th scope="col">Age</th>
			   		<th scope="col">Appointment Date</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob No</th>
			   		<th scope="col">Diseases</th>
			   		<th scope="col">Doctor Name</th>
			   		<th scope="col">Address</th>
			   		
			   		
			    </tr>
			   </thead>
			    <%
			    try {
			    	response.setContentType("application/vnd.ms-excel");
					response.setHeader("Content-Disposition","inline; filename=patientreport.xls");
			    	String s1 = request.getParameter("Search");
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from appoinment where (fullname  like'%"+s1+"%' or age like '%"+s1+"%')";
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getString("fullname")%></td>
		    			<td><%=rs.getString("gender")%></td> 
		    			<td><%=rs.getString("age")%></td> 
		    			<td><%=rs.getString("appoint_date")%></td> 
		    			<td><%=rs.getString("email")%></td> 
		    			<td><%=rs.getString("phno")%></td> 
		    			<td><%=rs.getString("diseases")%></td>
		    			<td><%=rs.getInt("doctor_id")%></td>
		    			<td><%=rs.getString("address")%></td>
		    			
		    			
		    			 
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
			  
</table>
<%} %>
</div>
</body>
</html>