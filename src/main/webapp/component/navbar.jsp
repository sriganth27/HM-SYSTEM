<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
.nav-item{
 padding: .2rem 2rem;
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
height: 67px;
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
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical-circle-check"></i> Media Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      <c:if test="${empty userObj}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp">
          <i class="fa-sharp fa-solid fa-right-to-bracket"></i> Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">Doctor</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">User</a>
        </li>
        </c:if>

       <c:if test="${not empty userObj}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appoinment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view_appointment.jsp">View Appointment</a>
        </li>
        <div class="dropdown">
  		<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" 
  		data-bs-toggle="dropdown" aria-expanded="false">
    	<i class="fa-solid fa-circle-user"></i>
    	 ${userObj.fullName}
 		 </button>
         <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
        <li><a class="dropdown-item" href="userLogout">Logout</a></li>
        </ul>
        </div>
       </c:if>
        
      </ul>
      
    </div>
  </div>
</nav>