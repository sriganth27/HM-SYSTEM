<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password change</title>

 <%@include file="component/allcss.jsp" %>
 <style type="text/css">
  
   .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
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
    box-shadow: 5px 2px 2px rgba(0, 0,0, .3),
            inset 4px 4px 10px white;
   
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
   </style>
</head>
<body class="bg">
	 <%@include file="component/navbar.jsp"%>
	 
	 <div class = "container p-5 ">
	<div class = "row">
		<div class = "col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body ">
				   <p class="fa2 fs-4 text-center">Change Password</p>
				   
				   <c:if test="${not empty sucMsg}">
				      <P class="text-center text-primary fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-info fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   
				   	<form action="changePassword" method="post">
						<div class ="mb-3">
							<lable class="form-lable">Enter Old Password</lable><input required 
							name="Oldpassword" type="password" class="form-control">
						</div>	
						
						<div class ="mb-3">
							<lable class="form-lable">Enter New Password</lable><input required 
							 name="Newpassword" type="password" class="form-control">
						</div>	
						<div align="center">
						<input type="hidden" value="${userObj.id }" name="uid">	
						<button  class="btn">Change Password</button>
						</div>	   			   	
				   	</form>
				   	
				</div>
			</div>
      </div>
   </div>
</div>

</body>
</html>