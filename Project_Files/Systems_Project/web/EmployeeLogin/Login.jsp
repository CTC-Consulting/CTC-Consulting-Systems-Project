<%-- 
    Document   : Login
    Created on : Feb 14, 2012, 12:53:41 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Login </title>
      </head>
    <body>
       <div id="main">
      <div id="header1">
            <br>
            <b> Welcome to the Motor City Repairs Application </b>
      </div>
         <div id="indexLeftColumn">
             <br>
              <br>
           <h1>Please sign in: </h1>
         </div>
        
       <div id="indexRightColumn1">    
       <form id="form_1" method="post" action="logincheck.jsp">
          <br>
           <br>
            
           <br>
           <h3>User ID:</h3> 
              <input type="text" name="userId" class="input" >
           <h3> Password:</h3>
             <input type="text" name="password" class="input" >
           <p> <input type="submit" name="Submit" value="Submit" >
                  <input type = "reset" value = "Reset" > </p> 
       </form>
<%--        <p  style="text-align:center; font-weight:bold; color:green;">
                  Login here</p>
                                        
          <h3>Sign Into Your Account</h3>
          <p>    User ID: </p>
          <input type="text" name="userId" class="input" >
          <p>    Password:</p>
          <input type="text" name="password" class="input" >
          <p><input type="submit" name="Submit" value="Submit" />
    <input type = "reset" value = "Reset"  ></p> --%>
        </div>  
        <div id="footer">
           <br><h4>&copy;2012 Motor City Repairs </h4>
        </div> 
      </div> 
    </body>
</html>

