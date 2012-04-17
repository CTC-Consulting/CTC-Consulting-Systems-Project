<%-- 
    Document   : CustomerSearch
    Created on : Feb 14, 2012, 9:34:34 PM
    Author     : Xia
    Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%@ page import = "Customers.CustomerSearch" %>
 
 
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="CustomerSearch" property="*" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Customer Search </title>
    </head>
    <body>
    <div id="main">
       <div id="header1">
            <br />
            <b> Motor City Repairs - Customer Search </b>
       </div> 
        <div id="indexLeftColumn">
             <br />
             <br />
           <h3> Please enter customer's name: </h3>
             <br />
           <h4 style = "color: red">  * Required fields ! </h4>
         </div>
        <div id="indexRightColumn1">   
        <form method = "get" action = "CustomerSearchcheck.jsp">
            <br />
            <br />
             <h3>* Last Name:</h3> 
             <input type = "text" name = "lastName1" required />  
             <br />
             <h3>* First Name:</h3> 
             <input type = "text" name = "firstName1" required /> 
           <br />
        <br />
      <br />
         <p> <input type = "submit" name = "Submit" value = "Submit">
             <input type = "reset" name ="Reset" value = "Reset" ></p>
         
       </form>
         </div>
          <div id="footer">
             <br/><h4>&copy;2012 Motor City Repairs </h4>
          </div>
       </div>
    </body>
</html>

