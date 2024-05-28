<%@page import="com.entity.Appoinment"%>
<%@page import="com.dao.AppoinmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0,0);
   }
   
   .clink{
   text-decoration:none;
   }
   .bg{
   background:#fff;
   }
 .card-body{
   background: #4de4b1;
    border: none;
    box-shadow: 5px 2px 2px rgba(0, 0,0, 0),
            inset 4px 4px 10px white;
   
   }
   .as{
    font-size: 20px;
   font-weight: 400;
   
   }
  .fa2{
   text-transform:uppercase;
      font-size: 30px;
  color: #fff;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }   
       .btn2{
   display : inline-block;
   text-decoration:none;
   border:1px solid #fff;
   padding : 12px 34px;
   position:relative;
  color:#fff;
  background: linear-gradient(to right , #5543ca , #a72879);
  
    font-size: 17px;
   font-weight: 600;
   cursor: pointer;
   
   }
   
   .btn2 :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }
 </style>
<%@include file="../component/allcss.jsp" %>
</head>
<body class="bg">

<%@include file="navbar.jsp" %>

<c:if test="${empty doctObj }">
	<c:redirect url="../doctor_login.jsp" ></c:redirect> 
 </c:if>
 
  <div class="container-fluid p-3">
    <div class="row">
          
      
	
	<div class="col-md-6 offset-md-3">
		<div class="card paint-card">
		<div class="card-body ">
					<c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
			   <p class="fa2 fs-3 text-center">Patient Comment</p>
			   
			   <% 
			      int id = Integer.parseInt(request.getParameter("id"));
			      AppoinmentDao dao = new AppoinmentDao(DBconnect.getConn());
			      Appoinment ap =dao.getAllAppointmentById(id);
			   %>
			   
			   <form class="row" action="../sendmail" method="post">
			   
			   <div class="as col-md-6">
			   <label>Patient Name</label><input type="text" name="name" readonly value="<%= ap.getFullName() %> " class="form-control">
			   </div>
			   
			    <div class="as col-md-6">
			   <label>Age</label><input type="text" readonly value=" <%=ap.getAge() %>" class="form-control">
			   </div>
			   
			    <div class="as col-md-6">
			   <label>Mob No</label><input type="text" readonly value="<%=ap.getPhnNo() %> " class="form-control">
			   </div>
			   
			    <div class="as col-md-6">
			   <label>Disease</label><input type="text" readonly value="<%=ap.getDiseases() %> " class="form-control">
			   </div>
			   
			   <div class="as col-md-6">
			   <label>Email</label><input type="text" name="email" readonly value="<%=ap.getEmail() %> " class="form-control">
			   </div>
			   
			    <div class="as col-md-6">
			   <label>Comment</label><textarea required name="comm" class="form-control" rows="3" ></textarea>
			   </div>
			   
			  <input type="hidden" name="id" value="<%= ap.getId()%>">
			  	   
			  <input type="hidden" name="did" value="<%= ap.getDoctorId()%>">
			  <div align="left">
			  <button class=" btn2 mt-3  col-md-6 offset-md-4">Submit</button>
			  </div>
			  </form>
			  

</div>
</div>
</div>
</div>
</div>


</body>


</body>
</html>