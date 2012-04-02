<%-- 
    Document   : Employeecheck
    Created on : Feb 13, 2012, 3:17:02 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "EmployeeLogin.Employee" %>

<jsp:useBean id = "employeeId" 
      class = "EmployeeLogin.Employee" scope = "session"></jsp:useBean>
<jsp:setProperty name = "employeeId" property = "*" />
<html>
    <head>
      
        <title>New Employee Registration</title>
    </head>
    <body>
     <%--  <%  if (employeeId.getFirstName()== null ||
               employeeId.getLastName() == null ||
               employeeId.getLocation() == null ||
               employeeId.getRate() == null  ||
               employeeId.getEmp_id()== null ||
               employeeId.getHiredate()== null) { %>
        <%    out.print(" * fields are required !"); %>
        <% } else { %> --%>
        
       <% employeeId.doCreate();%>
       <% 
        out.print(employeeId.getFirstName() + " " +
                employeeId.getLastName() + " " +
                " is now registered in the Motor City Employees' database!");
        out.close(); %>
       
      <%--<% } %> --%>
      
     
               
               
    </body>
</html>
