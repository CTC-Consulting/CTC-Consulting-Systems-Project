<%-- 
    Document   : Customerscheck
    Created on : Feb 13, 2012, 3:16:28 AM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "Customers.NewCustomers" %>

<jsp:useBean id = "NewCustomersId" 
      class = "Customers.NewCustomers" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewCustomersId" property = "*" />
<html>
    <head>
      
        <title>New Customer Registration</title>
    </head>
    <body>

       <% NewCustomersId.doCreate();%>
       <%  System.out.print(NewCustomersId.getFirstName() + " " +
                NewCustomersId.getLastName() + " " +
                " is now registered in the Motor City Customers database!");
           out.close(); %>
       
     
               
               
    </body>
</html>
