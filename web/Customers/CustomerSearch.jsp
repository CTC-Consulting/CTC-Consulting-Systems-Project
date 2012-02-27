<%-- 
    Document   : CustomerSearch
    Created on : Feb 14, 2012, 9:34:34 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%@ page import = "Customers.CustomerSearch" %>
 
 
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="CustomerSearch" property="*" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search for customer information</title>
    </head>
    <body>      
        <form method = "get" action = "CustomerSearchcheck.jsp">
     <h3> Please enter customer's first and last name: </h3>
     <h5> both fills are required! </h5>
     <p> <label> * Last Name: </label>
     <input type = "text" name = "lastName1" required />  
         <label> * First Name:</label>
     <input type = "text" name = "firstName1" required /> 
     </p>
     
         <p> <input type = "submit" name = "Submit" value = "Submit">
             <input type = "reset" name ="Reset" value = "Reset" ></p>
         
        </form>
    </body>
</html>

