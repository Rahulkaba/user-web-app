<%@page import="org.jsp.userwebApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <style type="text/css">
body {
	background-color: #eee;
	padding: 5rem 9%;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.colors-container {
  margin-top: 3rem;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap:wrap;
  gap: 10rem;
  
}
.colors-container .color-box h2 {
  background-color: aqua;
  color: #fff;
  padding: 5rem 5rem;
  font-weight: 800;
  font-size: 2.5rem;
}

.colors-container .color-box {
  background-color: #fff;
  padding: 1rem;
  border-radius: 1rem;
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
}
</style>
</head>
<body>
	<% User u=(User)session.getAttribute("user"); 
   if(u!=null){
     %>
      	  <h1>Login Successful</h1>
    <div class="colors-container">	  
	
	  <div class="color-box" >
	    <h2>
	    <a href="edit.jsp"><button>Edit Details</button></a>
	    </h2>
	  </div>
	
	  <div class="color-box">
	  <h2>
	  <a href="view.jsp"><button>View Details</button></a>
	  </h2>
	  </div>
	
	  <div class="color-box">
	  <h2>
	  <a href="delete?id=<%=u.getId()%>"><button>Delete Account</button></a>
	  </h2>
	  </div>
	
	<div class="color-box">
	<h2>
	<a href="logout"><button>Logout</button></a>
	</h2>
	</div>
	
	</div>
	<%
	}
   else{
	   response.sendRedirect("login.jsp");
    }
    %>

</body>
</html>