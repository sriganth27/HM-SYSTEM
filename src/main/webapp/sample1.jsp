<%@page import="org.apache.taglibs.standard.tag.common.xml.IfTag"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
</head>
<body>
<form action="sample1.jsp" method="post">
<br>
              <div align="center">
              <div class="col-sm-8 ">
              <div class="input-group">
			   <input type="text" name="Search1" class="form-control" placeholder="Enter doctor dob like YYYY-MM-DD"> 
			   <input type="text" name="Search2" class="form-control" placeholder="Enter doctor dob like YYYY-MM-DD"> 
			   
			   
			   
			  <div class="input-group-btn">
			  <button type="submit" value="Search" class="btn btn-success">Search</button>
			  </div>
			  </div>
			  </div>
              </div>
             
<br>


	

	<table class="table table-striped table-bordered">
			    
			     <tr class="warning">
			     	<th scope="col">Full Name</th>
			   	    <th scope="col">DOB</th>
			   		<th scope="col">qualification</th>
			   		<th scope="col">Specialist</th>
			   		<th scope="col">Email</th>
			   		<th scope="col">Mob no</th>
			   		<th scope="col">Action</th>
			    </tr>
			        <%
			    try {
			    	
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from doctor where dob  between '"+request.getParameter("Search1")+"' and '"+request.getParameter("Search2")+"' ";
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
		    			<td><a href="admin/edit_doctor.jsp?id=<%=rs.getInt("id")%>" class=" btn btn-sm btn-warning">Edit</a>
			                <a href="admin/deleteDoctor?id=<%=rs.getInt("id")%>" class="btn btn-sm btn-danger">Delete</a>
			           </td>
		    			 
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
</table>



          
</form>
</body>
</html>