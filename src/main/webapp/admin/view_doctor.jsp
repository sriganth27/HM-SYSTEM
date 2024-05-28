
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
<title>Doctor_details</title>
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
               
               0px 2px 0px #ccc;
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
   
   
   .btn :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }
.tab{
 background:#fff;
 border:50px;
 border-color:orange ;
 
}
.hd{
background:pink ;
text-transform: capitalize;
}

</style>
</head>
<body class="bg">
				  
<%@include file="navbar.jsp" %>
<form action="view_doctor.jsp" method="post">
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
			   placeholder="Type the doctor name">
			   
			  <div class="input-group-btn">
			  <button type="submit" value="Search" class="btn2 btn-primary"><i class="fa-solid fa-magnifying-glass"></i>Search</button>
			  </div>
			  </div>
              </div>
              </div>
<br>
             <div id="tblCustomers">
       <div align="center">
       <div class="col-sm-10 " >
        <p class="fa2 fs-3 text-center">doctor details</p>
     
<%
        if(request.getParameter("Search")==null){%>
        <div class="tab"></div>
        <table class="table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr class="warning">
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">DOB</th>
			   		<th scope="col">qualification</th>
			   		<th scope="col">Specialist</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob no</th>
			   		<th scope="col">Action</th>
			    </tr>
			    </thead>
			    
			    <%
			    try {
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from doctor ";
		    		
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getString("full_name")%></td>
		    			<td><%=rs.getString("dob")%></td> 
		    			<td><%=rs.getString("qualification")%></td> 
		    			<td><%=rs.getString("specialist")%></td> 
		    			<td><%=rs.getString("email")%></td> 
		    			<td><%=rs.getString("mobno")%></td> 
		    			<td><a href="edit_doctor.jsp?id=<%=rs.getInt("id")%>" class=" btn btn-sm btn-warning">Edit</a>
			                <a href="deleteDoctor?id=<%=rs.getInt("id")%>" class="btn btn-sm btn-danger">Delete</a>
			           </td>
		    			 
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
			  </tbody>
</table>
	
<%}
else{%>
	<table class="table table-striped table-bordered tab">
			     <thead class="hd">
			     <tr class="warning">
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">DOB</th>
			   		<th scope="col">qualification</th>
			   		<th scope="col">Specialist</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob no</th>
			   		<th scope="col">Action</th>
			    </tr>
			    </thead>
			    <%
			    try {
			    	String s1 = request.getParameter("Search");
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from doctor where (full_name  like'%"+s1+"%' or dob like '%"+s1+"%')";
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getString("full_name")%></td>
		    			<td><%=rs.getString("dob")%></td> 
		    			<td><%=rs.getString("qualification")%></td> 
		    			<td><%=rs.getString("specialist")%></td> 
		    			<td><%=rs.getString("email")%></td> 
		    			<td><%=rs.getString("mobno")%></td> 
		    			<td><a href="edit_doctor.jsp?id=<%=rs.getInt("id")%>" class=" btn btn-sm btn-warning">Edit</a>
			                <a href="deleteDoctor?id=<%=rs.getInt("id")%>" class="btn btn-sm btn-danger">Delete</a>
			           </td>
		    			 
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
			    <button type="submit" value="Search" class="btn btn-warning" id="btnExport" onclick="Export()">Generate </button>
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
                 pdfMake.createPdf(docDefinition).download("doctor_details.pdf");
             }
         });
     }
 </script>
</body>


</html>