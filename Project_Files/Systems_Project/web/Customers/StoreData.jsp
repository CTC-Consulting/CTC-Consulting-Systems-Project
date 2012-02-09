<%-- 
    Document   : StoreData
    Created on : Feb 7, 2012, 11:09:42 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "javaBeans.Customers"%>
<jsp:useBean id = "customersId" 
      class = "javaBeans.Customers" scope = "session"></jsp:useBean>
<jsp:useBean id = "storeCustomersId" 
      class = "javaBeans.StoreCustomers" scope = "application"></jsp:useBean>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm</title>
    </head>
    <body>
        <%
        storeCustomersId.storeCustomers(customersId);
        out.println(customersId.getFirstName() + " " +
                customersId.getLastName() + " " +
                " is now registered in the Motor City Customers database!");
        out.close();
        %>
    </body>
</html>
