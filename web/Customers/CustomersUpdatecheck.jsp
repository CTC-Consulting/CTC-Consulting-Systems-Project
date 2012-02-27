<%-- 
    Document   : CustomersUpdatecheck
    Created on : Feb 14, 2012, 9:16:52 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "Customers.CustomerUpdate" %>
<%@page import = "Customers.CustomerSearch" %>

<jsp:useBean id = "CustomerUpdate" class = "Customers.CustomerUpdate" scope = "session">
</jsp:useBean>
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch" scope = "session">
</jsp:useBean>
<jsp:setProperty name = "CustomerUpdate" property = "*" />
<jsp:setProperty name = "CustomerSearch" property = "*" />

<html>
    <head>
       <title>Confirm Update Customer Information</title>
    </head>
    <body>
      <% if( (CustomerSearch.getFirstName1() == null)
           &&(CustomerSearch.getLastName1() == null)&& (CustomerSearch.getStreet1() == null)
           &&(CustomerSearch.getCity1() == null) &&(CustomerSearch.getZip1() == null)
           &&(CustomerSearch.getState1() == null)&&(CustomerSearch.getDayPhone1() == null) )
                   { %>
          <%out.print("The * fills must be filled, please try again!"); %>
          
          <% } else { %>
          
          <% CustomerUpdate.doUpdate(); %>
          
          <%  out.print(CustomerSearch.getFirstName1() + " " +
                CustomerSearch.getLastName1() + " " +
                " is now updated in the Motor City customer database!");
        out.close(); %>
       
          
         <% } %>
         
         
         
             
    </body>
</html>

