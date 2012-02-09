<%-- 
    Document   : GetRegistration
    Created on : Feb 7, 2012, 10:49:23 PM
    Author     : Xia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "javaBeans.Customers"%>
<jsp:useBean id = "customersId" 
      class = "javaBeans.Customers" scope = "session"></jsp:useBean>
<jsp:setProperty name = "customersId" property = "*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Customer Registration</title>
    </head>
    <body>
        <%
        if (customersId.getFirstName()== null ||
            customersId.getLastName() == null ||
            customersId.getCus_id() == null) {
            out.println(" * fields are required !");
            return;
        }
        %>
        
        <p>You entered the following data </p>
        <p>Customer ID: <%= customersId.getCus_id() %></p>
        <p>First Name: <%= customersId.getFirstName() %></p>
        <p>Last Name: <%= customersId.getLastName() %></p>
        <p>Street: <%= customersId.getStreet() %></p>
        <p>City: <%= customersId.getCity() %></p>
        <p>Zip: <%= customersId.getZip() %></p>
        <p>State: <%= customersId.getState() %></p>
        <p>Daytime Phone: <%= customersId.getDayPhone() %></p>
        <p>Nighttime Phone: <%= customersId.getNightPhone() %></p>
        <p>Moble: <%= customersId.getMoble() %></p>
        
        <form method =" post" action ="StoreData.jsp">
            <input type ="submit" value ="Confirm">
        </form>
    </body>
</html>
