<%-- 
    Document   : Employeecheck
    Created on : Feb 13, 2012, 3:17:02 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "EmployeeLogin.Employee" %>

<jsp:useBean id = "employeeId" 
      class = "EmployeeLogin.Employee" scope = "session"></jsp:useBean>
<jsp:setProperty name = "employeeId" property = "*" />
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Employee Check </title>
    </head>
    <body>
      <div id="main">
      <div id="header1">
           <br />
         <b> Motor City Repairs -  Employee Registration </b>
      </div>
      <div id="indexCenter">
           <br />
           <br />
           <br />
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
         %>
       
      <%--<% } %> --%>
               
    </div>  
         <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
         </div>
     </div>    
   </body>
</html>
