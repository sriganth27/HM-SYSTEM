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
<title>Password change</title>

 <%@include file="../component/allcss.jsp" %>
 <style type="text/css">
  
   .paint-card{
    background: #e5e5e5;
    border: none;
    box-shadow: 15px 20px 20px rgba(0, 0,0, .3),
            inset 4px 4px 10px white;
   border-radius: 20px ;
   }
   #paint-card{
   
    background: #e5e5e5;
    border: none;
    box-shadow: 15px 20px 20px rgba(0, 0,0, .3),
            inset 4px 4px 10px white;
             box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
    border-radius: 20px ;
    overflow: hidden;
    justify-content: center;
    align-items: center;
  
}

.paint-card{
    box-shadow: inset 5px 5px 10px rgba(0, 0,0, .
                inset -4px -4px 10px white;
                transition: .2s;
}
   
   .clink{
   text-decoration:none;
   }
   
   
   </style>
</head>
<body class="bg bg-success">
	 <%@include file="navbar.jsp"%>
	 
	 <div class = "container p-5 ">
	<div class = "row">
		<div class = "col-md-4 ">
			<div class="card paint-card">
				<div class="card-body ">
				   <p class="fs-4 text-center">Change Password</p>
				   
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
						<input type="hidden" value="${userObj.id }" name="uid">	
						<button  class="btn bg-primary text-white col-md-12">Change Password</button>	   			   	
				   	</form>
				   	
				</div>
			</div>
      </div>
      <div class="col-md-5 offset-md-2 ">
				<div class="card paint-card">
					<div class="card-body bg bg-warning">
						<p class="fs-3 text-center">Edit profile</p>
						
				   <c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   <form action="../addDoctor" method="post">
				   
				   <div class="mb-3">
				   <label class="form-label">Full Name</label><input type="text" required 
				     name="fullname" class="form-control">
				   </div>
				   
				   
				   <div class="mb-3">
				   <label class="form-label">DOB</label><input type="date" required 
				     name="dob" class="form-control">
				   </div>
				   
				   
				   <div class="mb-3">
				   <label class="form-label">Qualification</label><input type="text" required 
				     name="qualification" class="form-control">
				   </div>
				   
				   
				   <div class="mb-3">
				   <label class="form-label">specialist</label> 
				   <select name="spec" required class="form-control">
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
				   
				    <div class="mb-3">
				   <label class="form-label">Email</label><input type="email" required readonly 
				     name="email" class="form-control">
				   </div>
				   
				   
				    <div class="mb-3">
				   <label class="form-label">Mob No</label><input type="text" required 
				     name="mobno" class="form-control">
				   </div>
				   
				   
				  
				   
				   <button type = "submit" class="btn btn-danger"> submit</button>
				   
				   </form>
					</div>
				</div>
			</div>
      
   </div>
</div>

</body>
</html>