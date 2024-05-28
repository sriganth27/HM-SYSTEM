<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
</head>
<body>
<div class="container" align="center">
<br>
<br>
<form action="sendmail" method="post">
<h2>Send email in jsp servlet</h2>
   <table>
   <tr>
      <td>Name</td>
      <td><input type="text" required placeholder="name" name="name" class="form-control"></td>
   </tr>
   <tr>
      <td>email</td>
      <td><input type="email" required placeholder="email" name="email" class="form-control"></td>
   </tr>
   <tr>
      <td>subject</td>
      <td><input type="text" required placeholder="subject" name="subject" class="form-control"></td>
   </tr>
   <tr>
      <td>Massage</td>
      <td><textarea name = "messege" rows="5" cols="100"></textarea></td>
   </tr>
   <tr>
    <td><input type="submit" id ="submit" class="btn btn-primary" value="Submit"></td>
   </tr>
   </table>
</form>
</div>
</body>
</html>