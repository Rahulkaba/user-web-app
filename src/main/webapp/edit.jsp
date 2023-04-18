<%@page import="org.jsp.userwebApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
  <style type="text/css">
   *{
     
      box-sizing: border-box;
      background: white;
      text-align: center;
   }
    div{
        height:20rem;
        width:70rem;
        box-shadow: 1px 1px 5px 5px;
        background:  transparent;
    
    }
   form{
         padding-top:3rem;
         text-align: center;
         font-weight: bold;
     }
  </style>
</head>
<body>
     <% 
     User u=(User)session.getAttribute("user");
     if(u!=null){
     %>
     <div>
     <form action="edit" method="post">
      <input type="number" name="id" value="<%=u.getId()%>" readonly="readonly"><br><br>
      <input type="text" name="nm" value="<%=u.getName()%>"><br><br>
      <input type="tel" name="ph" value="<%=u.getPhone()%>"><br><br>
      <input type="email" name="em" value="<%=u.getEmail()%>"><br><br>
      <input type="password" name="ps" value="<%=u.getPassword()%>"><br><br>
      <input type="submit"  value="Update">
     </form>
    </div>
     <%}else {
    	  response.sendRedirect("login.jsp");
     } %>
</body>
</html>