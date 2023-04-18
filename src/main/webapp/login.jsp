<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <style>
    
    *{
         padding-top: 10px;
         margin: 0;
         box-sizing: border-box;
         text-align: center;
         font-family: cursive;
         font-weight: bold;
    }
  #bx{
      max-width: 600px;
      margin: 0 auto;
      background-color: #fff;
      padding: 2rem;
      border-radius: 0.5rem;
      box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 7px;
      text-align: center; 
      background-image: linear-gradient(orange,white,rgb(15, 187, 15)); 
      }
</style>
</head>
<body>
 <div id="bx">
	<form action="LOGIN" method="post">
	 Phone no:<input type="tel" name="ph" ><br><br>
	 Password:<input type="password" name="ps" ><br><br><br>
	          <input type="submit" value="Login" >
	  <p>are you new user?</p><a href="signup.jsp">Sign Up</a>
	</form>
 </div>
    
</body>
</html>