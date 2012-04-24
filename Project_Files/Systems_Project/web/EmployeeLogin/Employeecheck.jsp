<%-- 
    Document   : Employeecheck
    Created on : Feb 13, 2012, 3:17:02 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "EmployeeLogin.Employee" %>
<%@page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" 
      class = "EmployeeLogin.Login" scope = "session"></jsp:useBean>
<jsp:setProperty name = "Login" property = "*" />

<jsp:useBean id = "employee" 
      class = "EmployeeLogin.Employee" scope = "session"></jsp:useBean>
<jsp:setProperty name = "employee" property = "*" />
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
    
       <% employee.doCreate();%>
       <% 
        out.print(employee.getFirstName() + " " +
                employee.getLastName() + " " +
                " is now registered in the Motor City Employees' database!");
         %>
         
         <br />  <br />  <br />  <br /> 
         <form method="post" action="logincheck.jsp">
                  <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                  <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                  <input class="userButtom" type="submit" value="Back to admin control panel"> 
                  </form> 
               
    </div>  
         <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
         </div>
     </div>    
   </body>
</html>
