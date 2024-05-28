<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
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
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
 <style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, 0),
               inset 4px 4px 10px white;
   }
   
   .clink{
   text-decoration:none;
   }
   .card-body{
   background: #2dd2e8;
    border: none;
    box-shadow: 5px 2px 2px rgba(0, 0,0, 0),
            inset 4px 4px 10px white;
   
   }
.btn{
   display : inline-block;
   text-decoration:none;
   border:1px solid #fff;
  
   position:relative;
  color:#fff;
  background: linear-gradient(to right , #5543ca , #a72879);
  
   cursor: pointer;
   
   }
   .btn :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }  
   .as{
    font-size: 20px;
   font-weight: 450;
   
   }
   .fa2{
    font-size: 28px;
   font-weight: 600;
   
   }
      .bg{
 
   background-image: url("img/back7.jpg");
   background-size: full;
   background-position: none;
   background-repeat: no-repeat;
   
  
   }
 </style>
</head>
<body class="bg">
<%@include file="component/navbar.jsp" %>
   <div class="container-fluid p-3">
    <div class="row">
    
          <div class=" col-md-5 offset-md-4" >
				<div class="card paint-card">
					<div class="card-body">
						<p class="fa2 fs-3 text-center">User Appoinment</p>
						
				 
				   <form action="addAppoinment" method="post" class="row g-3">
				      <c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   <input type="hidden" name="userid" value="${userObj.id }">
				   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class=" form-label">Full Name</label><input type="text" required 
				     name="fullname" class="form-control">
				   </div>
				   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class=" form-label">Gender</label>
				   <select
				     name="gender" class="form-control">
				     <option value="male">Male</option>
				     <option value="female">Female</option>
				     </select>
				   </div>
				   
				   
				    <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Age</label><input type="text" required 
				     name="age" class="form-control">
				   </div>
				   
				     <div class="as col-md-6">
				   <label  for="inputEmail4" class="form-label">Appoinment Date</label><input type="date" required 
				     name="appoint_date" class="form-control">
				   </div>
				  
				     <div class="as col-md-6">
				   <label  for="inputEmail4" class="form-label">Email</label><input type="email" required 
				     name="email" class="form-control">
				   </div> 
				    
				    <div class="as col-md-6">
				   <label for="fa inputEmail4" class="form-label">phone no</label><input type="text" required 
				     name="phno" maxlength="10" class="form-control">
				   </div>
				   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Diseases</label><input type="text" required 
				     name="diseases" class="form-control">
				   </div>
				   
				   <div class="as col-md-6">
				   <label class="form-label">Doctor</label><select  required 
				     name="doct" class="form-control">
				     <option value="">---select---</option>
				     <% 
				     DoctorDao dao = new DoctorDao(DBconnect.getConn());
					 List<Doctor> list = dao.getAllDoctors();
					 for(Doctor d: list)
					 {%>
						 
					<option value="<%=d.getId()%>"><%=d.getFullName()%>(<%= d.getSpecialist()%>)</option>	 
						 
					 <%}
				      %>
				     
				  
				     </select>
				   </div>
				   
				  <div class="as col-md-12">
				  	<label>Full address</label>
				  	<textarea required name ="address" class="form-control" row ="3" cols=""></textarea>
				  
				  </div>
				   <c:if test="${ empty userObj}">
				     <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">submit</a>
				   </c:if>
				   
				   <c:if test="${not empty userObj}">
				      <button class="btn col-md-6 offset-md-3 ">submit</button>
				   </c:if>
				   </form>
					</div>
				</div>
			</div>
      
	
	
       
       
       </div>
   </div>
   
</body>
</html>