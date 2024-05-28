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
<style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
 .nav-item{
 padding: .1rem 1rem;
 font-size: 20px;
 font-weight: 500;
 }
 .navbar-brand{
 font-size: 20px;
 font-weight: 500;
 }
 
 .navbar {
 position: sticky;
 top: 0;
 left: 0;
 z-index: 100;
 padding: .5rem 5rem;
 box-shadow: 5px 5px 20px rgba(0, 0,0, .5);
 background :black;

}
.navbar .navbar-brand
{
    font-size: 25px;
    font-weight: 800;
    color:  #29f700;
}
#navbarSupportedContent a{
    color: #fff;
    border-bottom: 2px solid transparent;
}
#navbarSupportedContent a:hover{
 
 border-bottom: 2px solid #29f700;
}
#navbarSupportedContent button{
    background: #29f700;
}
   .dropdown-item{
   color:red;
   background: #29f700;
   }
</style>

<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i 
    class="fa-solid fa-house-medical-circle-check"></i>Media Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp">patient</a>
        </li>
       
        </ul>
        <form class="d-flex">
          <div class="dropdown">
  		  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" 
  		   data-bs-toggle="dropdown" aria-expanded="false">
    		<i class="fas fa-user-circle"></i>${doctObj.fullName}
 		  </button>
  
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        
        <li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
        
  </ul>
    </div>
    </form>
       </div>
     </div>
</nav>