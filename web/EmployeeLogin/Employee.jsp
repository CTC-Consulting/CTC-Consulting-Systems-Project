<%-- 
    Document   : Employee
    Created on : Feb 13, 2012, 3:13:35 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import = "EmployeeLogin.Employee" %>
<jsp:useBean id = "employeeId" 
      class = "EmployeeLogin.Employee" scope = "session"></jsp:useBean>
<jsp:setProperty name = "employeeId" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method = "get" action = "Employeecheck.jsp">
         <h3>Please enter the following employee information: </h3>
     <p> <label> * Employee ID: </label>
         <input type="text" name="emp_id"  required/> </p>
     <p> <label> * Location: </label>
         <input type="text" name="location" required/> </p>
     <p> <label> * First Name:</label>
         <input type = "text" name = "firstName"  required /> </p>
     <p> <label> * Last Name: </label>
         <input type = "text" name = "lastName"   required /> </p>
     <p> <label> * Rate: </label>
         <input type = "text" name = "rate"   required />  </p>
      <p><label> * Hire Date: </label>
         <input type = "text" name = "city"  required />  </p>
   

      <p> <input type = "submit" name = "Submit" value = "Submit">
          <input type = "reset" value = "Reset"></p>
         
      <p> * required fields </p>
        </form>
        
        
    </body>
</html>
