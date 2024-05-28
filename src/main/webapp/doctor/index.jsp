<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
<style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
   }
   
   .clink{
   text-decoration:none;
   }
   .bg1{
 
   background-image: url("../img/back13.jpg");
   background-size: cover;
   background-position: center;
   
  
   }
     .card-body{
   
   background:#e1c1db;
   
   }
      .p1{
 
  font-size: 30px;
  color: rgb(62, 25, 228);
    background:#e1c1db;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               0px 2px 0px #ccc;
   }
 </style>
<%@include file="../component/allcss.jsp" %>
</head>
<body class="bg1">
<c:if test="${empty doctObj }">
	<c:redirect url="../doctor_login.jsp" ></c:redirect> 
 </c:if>
<%@include file="navbar.jsp" %>
  
 
  <%
   Doctor d=(Doctor)session.getAttribute("doctObj");
  DoctorDao dao = new DoctorDao(DBconnect.getConn()) ;%>
      <div class = "container p-5"> 
       <p class="p1 text-center fs-3">Doctor Dashboard</p>
      <div class="row">
         <div class="col-md-4 offset-md-2 mt-2">
         
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
						 Doctor<br><%=dao.countDoctor() %>
						</p>
					</div>
				</div>
			</div>
	
		
		
		 
      
         <div class="col-md-4 mt-2">
         
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
						 Total Appointment<br><%= dao.countAppoinmnetByDoctorId(d.getId())%>
						</p>
					</div></div>
				</div>
			</div>
		</div>	
				
			
</body>
</html>