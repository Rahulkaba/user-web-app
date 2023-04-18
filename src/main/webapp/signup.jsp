<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
  <style type="text/css">
    *{
        color: black;
        padding-top: 0.5rem;
        padding-left:1rem;
        box-sizing: border-box;
        text-align:center;
        background-color: buttonface;
        font-family: cursive;
    }
    div{
         box-shadow:  0px 7px 29px 0px;
         background-color: buttonface;
         width:70rem;
         padding:1rem;  
       }
       form{
         text-align: center;
         font-weight: bold;
       }
  </style>
  
</head>
<body>
    <div>
      <form action="signup" method="post" >
        <h1>Enter your Details</h1>
       <input type="text" name="nm" value="Name"><br><br>
       <input type="password" name="ps" value="Password"><br><br>
       <input type="email" name="em" value="Email"><br><br>
       <input type="tel" name="ph" value="PhoneNo"><br><br><br>
       <input type="submit" value="Register">
      </form>
     </div>
</body>
</html>