<%-- 
    Document   : logincheck
    Created on : Feb 13, 2012, 3:17:40 AM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Employee Login</title>
    </head>
    <body>
        <% if (Login.testUsernameAndPassword() == false) { %>
         <form id="form_1" method="post" action="logincheck.jsp">
            
             <p style="text-align:center; font-weight:bold; color:red;">
                  Login Information Incorrect, please try again!</p>
                                        
          <h3>Sign Into Your Account</h3>
          <p>    User ID: </p>
          <input type="text" name="userId" class="input" >
          <p>    Password:</p>
          <input type="text" name="password" class="input" >
          <p><input type="submit" name="Submit" value="Submit" >
          <input type = "reset" value = "Reset" ></p>
          </form>
         
          <% } else { %>
                <% if (Login.checkAccess() == false) { %>
                
            <%--   <form id="GetRegistration" method="post" action="GetRegistration.jsp">
                <input type="hidden" name="userId" value="<%= login.getUserId() %>" />
                <input type="hidden" name="password" value="<%= login.getPassword() %>" />
                <input class="userButtom" type="submit" value="Update your Account Information!" />
                </form> 
                --%>
                 <p style="text-align:center; color:black;">Under instruction, check back later!</p>
                 <%--for fixing this part, go to userAccount.jsp in JavaIII project!
                 --%>
                  <% } else { %>
                  <p style="text-align:center; font-weight:bold; font-size:20px; color:green;">Admin Control Panel</p>
          <% } %>
      <% } %>
    </body>
</html>
