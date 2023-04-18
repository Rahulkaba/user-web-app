<%@page import="org.jsp.userwebApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view</title>
  <style type="text/css">
  *{ 
    padding-top :10px;
    margin: 0;
    box-sizing: border-box;
    border:threedshadowS;
    text-align: center;
    font-family: fantasy;
    font-style: italic;
    font-variant: small-caps;
    font-weight: bold;
    
  }
  #bx{
  max-width: 600px;
  margin: 0 auto;
  background-color: #fff;
  padding: 3rem;
  border-radius: 0.5rem;
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 7px;
  text-align: center;  
  }
  
  </style>
</head>
<body>
      <%
         User u=(User)session.getAttribute("user");
        if(u!=null){
      %>
      <div id="bx">
         <h2>Id:<%=u.getId()%></h2>
         <h2>Name:<%=u.getName()%></h2>
         <h2>Phone:<%=u.getPhone()%></h2>
         <h2>Email:<%=u.getEmail()%></h2>
         <h2>Password:<%=u.getPassword()%></h2> 
      </div>
      <%}%>
</body>
</html>