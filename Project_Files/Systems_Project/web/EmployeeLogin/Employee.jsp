<%-- 
    Document   : Employee
    Created on : Feb 13, 2012, 3:13:35 PM
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
        <title>Motor City Repairs - Employee  </title>
      </head>
<body>
    <div id="main">
    <div id="header1">
       <br />
       <b> Motor City Repairs - Add New Employee </b>
    </div>
        
    <div id="indexLeftColumn">
       <br />
        <br />
        <%--get the new employee information --%>
       <h3>Please enter employee's information: </h3>
       <br />
       <h4 style = "color: red">  * Required fields ! </h4>
    </div>
    <div id="indexRightColumn1">  
     <form method = "get" action = "Employeecheck.jsp">
     <table border="0" cellspacing="2" cellpadding="2">
     <tbody>
         <br />
         <br />
         <br />
       <tr>
          <td><h3> * Employee ID:</h3></td>
          <td ><input type="text" name="emp_id"  required/> </td>
        </tr>
       <tr>
          <td><h3> * Location: </h3></td>
          <td> <input type="text" name="location" required/>  </td>
         </tr>
      <tr>
          <td><h3> * First Name: </h3></td>
          <td><input type = "text" name = "firstName"  required /> </td>
         </tr>
      <tr>  
         <td><h3> * Last Name:</h3></td>
         <td><input type = "text" name = "lastName"   required /></td>
        </tr>
      <tr>
         <td><h3> * Rate:  </h3></td>
         <td><input type = "text" name = "rate"   required /> </td>
        </tr>
      <tr>  
         <td><h3> * Hire Date:  </h3></td>
         <td><input type = "text" name = "hiredate"  required /> </td>
        </tr>
      <tr>
         <td> </td>
         <td> </td>
        </tr>
      <tr> 
         <td> </td>
         <td> </td>
        </tr>
       <tr>
          <td> </td>
          <td > <input type = "submit" name = "Submit" value = "Submit">
                <input type = "reset" value = "Reset"> </td>
          </tr>
         </tbody>
        </table>
      </form>
      </div>      

      <p> <input type = "submit" name = "Submit" value = "Submit">
          <input type = "reset" value = "Reset"></p>
         
      <p> * required fields </p>
        </form> 
 --%>       
        
      <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
      </div>
        </div>
    </body>
</html>
