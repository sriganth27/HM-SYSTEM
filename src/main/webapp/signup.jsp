<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
 <style type="text/css">
  
     body{
  background:  #763AB7;
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
  } 
  form
  {
  width: 500px;
  margin: 8% auto;
  padding: 50px 0;
  text-align: center;
  box-shadow: 0 20px 40px rgb(0,0,0);
  background: #763AB7;
  }
  .mb-3{
  margin:30px auto;
  width:80%;
  position :relative;
  box-shadow: 0 8px 10px -10px rgb(0,0,0);
  }
  
  .mb-3 input{
  width: 100%;
  height: 40px;
  border: none;
  background:#efefef ;
  padding-left: 50px;
  }
  span{
  position: absolute;
  left: 0;
  right: 0;
  height: 40px;
  width: 40px;
  background: linear-gradient(to right , #4CAF50 , #00BCD4);
  }
  
  span .fa{
    padding: 10px;
    color: #fff;
  }
  button{
  width: 130 px;
  height: 40px;
  margin-left: 10%;
  display: block;
  color:#fff;
  border: 0;
  font-size: 16px;
  outline: none;
  background :linear-gradient(to right , #4CAF50 , #00BCD4);
  box-shadow: 0 8px 10px -10px rgb(0,0,0);
  cursor: pointer;
  }
  
  button .fa{
  margin-right: 10px;
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
   
   .clink{
   color:white;
   }
   
   </style>

</head>
<body>
<%@include file="component/navbar.jsp"%>
	 
	
				   
				   
				   
				   
				   	<form action="UserRegister" method="post">
				   	<c:if test="${not empty sucMsg}">
				      <P class="text-center text-white fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-white fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   	<p class="p1  text-center">User Register</p>
				   		<div class ="mb-3">
				   		<span><i class=" fa fa-solid fa-user"></i></span>
							<input required  placeholder="Full Name " 
							name="fullname" type="text" class="form-control">
						</div>	
						<div class ="mb-3">
							<span><i class=" fa fa-solid fa-envelope"></i></span><input name="email" required 
							 placeholder="Email Id " type="email" class="form-control">
						</div>	
						
						<div class ="mb-3">
							<span><i class=" fa fa-solid fa-key"></i></span><input name="Password"required 
							 placeholder="Password" type="password" class="form-control">
						</div>		
								
						
							<button type="submit" ><i class=" fa fa-solid fa-sign-in"></i>Register</button>
						<br><a href="user_login.jsp" class="clink">Goto Back </a>	   			   	
				   	</form>
				   	

</body>
</html>
