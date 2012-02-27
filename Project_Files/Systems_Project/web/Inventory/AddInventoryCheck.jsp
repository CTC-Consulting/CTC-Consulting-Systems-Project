<%-- 
    Document   : AddInventoryCheck
    Created on : Feb 26, 2012, 8:55:05 PM
    Author     : Matthew Shank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.AddInventory" %>

<jsp:useBean id = "AddInventoryId" 
      class = "Inventory.AddInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "AddInventoryId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Added Inventory</title>
    </head>
    <body>
        <% AddInventoryId.doCreate();
          System.out.print(" Test is now registered in the Motor City Inventory database!");
           out.close(); %>
    </body>
</html>
