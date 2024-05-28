<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@include file="allcss.jsp" %>
 <style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
   }
   
   .clink{
   text-decoration:none;
   }
     .bg{
 
   background-image: url("../img/back7.jpg");
   background-size: full;
   background-position: none;
   background-repeat: no-repeat;
   
  
   }
      .p1{
 
  font-size: 30px;
  color: rgb(62, 25, 228);
   background:#e1c1db;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }
   .card{
   
   background:#e1c1db;
   
   }
   
   
   
 </style>





</head>
<body class="bg">
<%@include file="navbar.jsp" %>
 <c:if test="${empty adminObj }">
	<c:redirect url="../admin_login.jsp" ></c:redirect> 
 </c:if>
<div class="container p-5">
<p class="p1 text-center fs-3">Admin Dashboard</p>

 
				   <c:if test="${not empty sucMsg}">
				      <P class="text-center text-danger fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-info fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   <% DoctorDao dao = new DoctorDao(DBconnect.getConn()) ;%>
				   
		<div class="row">
			<div class="col-md-4 mt-2">
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
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
						 User<br><%=dao.countUser() %>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-2">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-primary">
						<i class="fas fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
						 Total appoinment<br><%=dao.countAppoinmnet() %>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-2">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-primary">
						<i class="fas fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
						 Specialist<br><%= dao.countSpecialist() %>
						</p>
					</div>
				</div>
			</div>
			
			
		</div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
        <div class="form-group">
          	<lable>Enter Specialist Name</lable>
          	<input type="text" name="specName" class="form-control">
        </div>
        <div class="text-center mt-3">
        	<button type="submit" class="btn btn-primary">Add</button>
        </div>
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>










</body>
</html>