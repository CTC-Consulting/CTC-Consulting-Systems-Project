<%-- 
    Document   : Customers
    Created on : Feb 13, 2012, 3:15:10 AM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import = "Customers.NewCustomers" %>
<jsp:useBean id = "newCustomersId" 
      class = "Customers.NewCustomers" scope = "session"></jsp:useBean>
<jsp:setProperty name = "newCustomersId" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method = "get" action = "Customerscheck.jsp">
         <h3>Please enter the following customer information: </h3>
     <p> <label> * Customer ID: </label>
         <input type="text" name="acctNo" class="input" required/> </p>
     <p> <label> * First Name:</label>
         <input type = "text" name = "firstName" required /> </p>
     <p> <label> * Last Name: </label>
         <input type = "text" name = "lastName" required /> </p>
     <p> <label> * Street: </label>
         <input type = "text" name = "street" required />  </p>
      <p><label> * City: </label>
         <input type = "text" name = "city"  required />  </p>
      <p><label> * State: </label>
         <input type = "text" name = "state" required /> </p>
      <p><label> Zip: </label>
         <input type = "text" name = "zip"  required /> </p>
     <p> <label> Daytime Phone: </label>
         <input type = "text" name = "dayPhone" required /> </p>
     <p><label> Nighttime Phone: </label>
        <input type = "text" name = "nightPhone" /> </p>
         <p> <label> Cell Number: </label>
         <input type = "text" name = "moble"  />  </p>

         <p> <input type = "submit" name = "Submit" value = "Submit">
             <input type = "reset" value = "Reset"></p>
         
         <p> * required fields </p>
        </form>
        
        
    </body>
</html>
