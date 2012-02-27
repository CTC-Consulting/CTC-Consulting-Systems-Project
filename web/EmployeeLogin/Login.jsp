<%-- 
    Document   : Login
    Created on : Feb 14, 2012, 12:53:41 PM
    Author     : Xia
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
        <title>Home Page</title>
    </head>
    <body>
       <form id="form_1" method="post" action="logincheck.jsp">
            
          <p style="text-align:center; font-weight:bold; color:green;">
                  Login here</p>
                                        
          <h3>Sign Into Your Account</h3>
          <p>    User ID: </p>
          <input type="text" name="userId" class="input" >
          <p>    Password:</p>
          <input type="text" name="password" class="input" >
          <p><input type="submit" name="Submit" value="Submit" />
          <input type = "reset" value = "Reset"  ></p>
          </form>
    </body>
</html>
