<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
   <%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.admin.serevlet.Addspecialist"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Appoinment"%>
<%@page import="com.dao.AppoinmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient_details</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.bg{
   background:#fff;
   }
        .fa2{
   text-transform:uppercase;
      font-size: 30px;
  color:  #df2387;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               0px 2px 0px #ccc,
               0px 2px 0px #ccc;
   }   
.tab{
 background:#fff;
 border: 10px;
 border-color:orange;
}
.hd{
background: pink;
text-transform: capitalize;
}
 .btn2{
   display : inline-block;
   text-decoration:none;
   border:1px solid #fff;
   padding : 5px 15px;
   position:relative;
  color:#fff;
  background: linear-gradient(to right , #5543ca , #00BCD4);
  
    font-size: 17px;
   font-weight: 600;
   cursor: pointer;
   
   }
</style>
</head>
<body class="bg">
				  
<%@include file="navbar.jsp" %>
<form action="patient.jsp" method="post">
<br>
 					<c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
              <div align="center">
              <div class="col-sm-4 ">
              <div class="input-group">
			   <input type="text" name="Search" class="form-control" 
			   placeholder="Type the patient name">
			   
			  <div class="input-group-btn">
			  <button type="submit" value="Search" class="btn2"><i class="fa-solid fa-magnifying-glass"></i>Search</button>
			  </div>
			  </div>
              </div>
              </div>
<br> 
             <div id="tblCustomers">

       <div align="center">
       <div class="col-sm-11 " >
        <p class="fa2 fs-3 text-center">patient details</p>
     
<%
        if(request.getParameter("Search")==null){%>
        
        <table class="table table-striped table-bordered tab" >
			    <thead class="hd">
			     <tr>
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">Gender</th>
			   		<th scope="col">Age</th>
			   		<th scope="col">Appointment Date</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob No</th>
			   		<th scope="col">Diseases</th>
			   		<th scope="col">Doctor Name</th>
			   		<th scope="col">Address</th>
			   		
			   		
			    </tr>
			   </thead>
			<tbody>
			   <%
			   
			    AppoinmentDao dao = new AppoinmentDao(DBconnect.getConn());
			    DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
			    List<Appoinment> list = dao.getAllAppointment();
			    
			   for(Appoinment ap:list)
				
			   {
				   Doctor d = dao2.getDoctorById(ap.getDoctorId());
			    %>
			   <tr>
			   <td><%=ap.getFullName() %></td>
			   <td><%=ap.getGender() %></td>
			   <td><%=ap.getAge()%></td>	
			   <td><%=ap.getAppoinDate() %></td>
			  <td><%=ap.getEmail() %></td>
			   <td><%=ap.getPhnNo() %></td>
			    <td><%=ap.getDiseases() %></td>
			   <td><%=d.getFullName() %></td>
			   <td><%=ap.getAddress() %></td>
			 
		
			   </tr>
				   
				   
			   <%}
			   
			   %>
			   </tbody>
	
		   </table>
		
	
<%}
else{%>
	<table class="table table-striped table-bordered tab">
			    
			     <thead class="hd">
			     <tr>
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">Gender</th>
			   		<th scope="col">Age</th>
			   		<th scope="col">Appointment Date</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob No</th>
			   		<th scope="col">Diseases</th>
			   		<th scope="col">Doctor Name</th>
			   		<th scope="col">Address</th>
			   		
			   		
			    </tr>
			   </thead>
			    <%
			    try {
			    	String s1 = request.getParameter("Search");
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from appoinment where (fullname  like'%"+s1+"%' or age like '%"+s1+"%')";
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getString("fullname")%></td>
		    			<td><%=rs.getString("gender")%></td> 
		    			<td><%=rs.getString("age")%></td> 
		    			<td><%=rs.getString("appoint_date")%></td> 
		    			<td><%=rs.getString("email")%></td> 
		    			<td><%=rs.getString("phno")%></td> 
		    			<td><%=rs.getString("diseases")%></td>
		    			<td><%=rs.getInt("doctor_id")%></td>
		    			<td><%=rs.getString("address")%></td>
		    			
		    			
		    			 
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
			  
</table>
<%} %>
</div>
</div>
 </div>         
</form> 
            <div align="center">
            <div class="input-group-btn">
			    <button type="submit" value="Search" class="btn btn-warning" id="btnExport" onclick="Export()">Generte</button>
			    
			    
			  </div>
			  </div>
			  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
 <script type="text/javascript">
     function Export() {
         html2canvas(document.getElementById('tblCustomers'), {
             onrendered: function (canvas) {
                 var data = canvas.toDataURL();
                 var docDefinition = {
                     content: [{
                         image: data,
                         width: 500
                     }]
                 };
                 pdfMake.createPdf(docDefinition).download("patient_details.pdf");
             }
         });
     }
    
 </script>
 
</body>


</html>