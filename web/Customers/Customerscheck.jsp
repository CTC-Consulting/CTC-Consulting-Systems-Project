<%-- 
    Document   : Customerscheck
    Created on : Feb 13, 2012, 1:26:36 AM
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
      
   <%--    <%  if (NewCustomersId.getFirstName()== null ||
               NewCustomersId.getLastName() == null ||
               NewCustomersId.getCus_id() == null   ||
               NewCustomersId.getStreet() ==null  ||
               NewCustomersId.getCity()==null ||
               NewCustomersId.getDayPhone()==null||
               NewCustomersId.getZip()==null   ||
               NewCustomersId.getState()==null) {
            out.println(" * fields are required !");
         } else {
        %>  --%>


       
       <% NewCustomersId.doCreate();%>
       <% 
        out.print(NewCustomersId.getFirstName() + " " +
                NewCustomersId.getLastName() + " " +
                " is now registered in the Motor City Customers database!");
        out.close(); %>
      
   <%--  <% } %> --%>
               
               
    </body>
</html>
