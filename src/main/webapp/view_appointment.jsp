<%@page import="com.entity.User"%>
<%@page import="com.entity.Appoinment"%>
<%@page import="com.dao.AppoinmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.admin.serevlet.Addspecialist"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<%@include file="component/allcss.jsp" %>
 <style type="text/css">
  
  
       body{
  background:  #fff;
 
  } 
  .tab{
   background:#fff;
   border: 10px;
  border-color:orange;
 }
.hd{
background: pink;
text-transform: capitalize;
}
   
    .ps{
   text-transform:uppercase;
   font-size: 30px;
  color: #b905e6e7;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }  
 </style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

   <div class="container-fluid p-4">
    <div class="row">
          
      
	<div align="center">
	<div class="col-md-10">
		
					<c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
			   <p class="ps fs-3 text-center">Appointment List</p>
			   <table class=" table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr>
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">Gender</th>
			   		<th scope="col">Age</th>
			   		<th scope="col">Appointment Date</th>
			   		<th scope="col">Diseases</th>
			   		<th scope="col">Doctor Name</th>
			   		
			    </tr>
			   
			   </thead>
			   <tbody>
			   <%
			    User user = (User) session.getAttribute("userObj");
			    AppoinmentDao dao = new AppoinmentDao(DBconnect.getConn());
			    DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
			    List<Appoinment> list = dao.getAllAppointmentByLoginUser(user.getId());
			    
			   for(Appoinment ap:list)
				 
			   {
			    Doctor d = dao2.getDoctorById(ap.getDoctorId());
			    %>
			   <tr>
			   <td><%=ap.getFullName() %></td>
			   <td><%=ap.getGender() %></td>
			   <td><%=ap.getAge()%></td>	
			   <td><%=ap.getAppoinDate() %></td>
			   <td><%=ap.getDiseases() %></td>
			   <td><%=d.getFullName()%></td>
			   
			
			             	  
			 
			   </tr>
				   
				   
			   <%}
			   
			   %>
			  </tbody>
	
		   </table>
		
	 </div>
	 
	</div>
	
	 </div>
        
       </div>
       	
   

       
</body>
</html>