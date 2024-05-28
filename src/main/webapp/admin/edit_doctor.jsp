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
<title>Edit Doctor</title>
<%@include file="allcss.jsp" %>
 <style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
   }
   
   .clink{
   text-decoration:none;
   }
     .card-body{
   background: #4de4b1;
    border: none;
    box-shadow: 5px 1px 1px rgba(0, 0,0, .3),
            inset 2px 2px 5px white;
   
   }
    .bg{
    background: #fff;
;
   }
      .as{
    font-size: 20px;
   font-weight: 450;
  
   }
   .fa2{
    font-size: 28px;
   font-weight: 600;
   
   }
    .btn{
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
   .btn :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }
    .p1{
 
  font-size: 30px;
  color: #fff;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }
 </style>
</head>
<body class="bg">
<%@include file="navbar.jsp" %>
   <div class="container-fluid p-3">
    <div class="row">
          <div class="col-md-6 offset-md-3 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="p1 fs-3 text-center">Edit Doctor Details</p>
						
				   <c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   
				   <%
				   int id = Integer.parseInt(request.getParameter("id"));
				   DoctorDao dao2= new DoctorDao(DBconnect.getConn());
				   Doctor d = dao2.getDoctorById(id);
				   %>
				   <form action="../updateDoctor" method="post">
				   
				   <div class="as mb-3">
				   <label class=" form-label">Full Name</label><input type="text" required 
				     name="fullname" class="form-control" value="<%=d.getFullName()%>">
				   </div>
				   
				   
				   <div class="s  mb-3">
				   <label class=" form-label">DOB</label><input type="date" required 
				     name="dob" class="form-control" value="<%=d.getDob()%>">
				   </div>
				   
				   
				   <div class="as mb-3">
				   <label class=" form-label">Qualification</label><input type="text" required 
				     name="qualification" class="form-control" value="<%=d.getQualification()%>">
				   </div>
				   
				   
				   <div class="as mb-3">
				   <label class=" form-label">specialist</label> 
				   <select name="spec" required class="form-control" value="<%=d.getSpecialist()%>">
				   <option>---select---</option>
				   <% SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
				       List<Specalist> list= dao.getAllSpecialist();	
	       			 for(Specalist s: list)
	       			 {%>
	       				 <option><%=s.getSpecalistName()%></option>
	       			 <%}
				   %>
				   </select>
				   </div>
				   
				    <div class="as mb-3">
				   <label class=" form-label">Email</label><input type="email" required 
				     name="email" class="form-control" value="<%=d.getEmail()%>">
				   </div>
				   
				   
				    <div class="as mb-3">
				   <label class="form-label">Mob No</label><input type="text" required 
				     name="mobno" class="form-control" value="<%=d.getMobNo()%>">
				   </div>
				   
				   
				    <div class="as mb-3">
				   <label class="form-label">Password</label><input value="<%=d.getPassword()%>"
				     type="text" required 
				     name="password" class="form-control" >
				   </div>
				   <input type="hidden" name="id" value="<%=d.getId()%>">
				   <div align="center">
				   <button type = "submit" class="btn ">Update</button>
				   </div>
				   </form>
					</div>
				</div>
			</div>
      
	

       
       </div>
   </div>

       
</body>
</html>