<%-- 
    Document   : EditInventoryCheck
    Created on : Mar 6, 2012, 11:56:58 AM
    Author     : mshank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.EditInventory" %>

<jsp:useBean id = "EditInventoryId" 
      class = "Inventory.EditInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "EditInventoryId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Added Inventory</title>
    </head>
    <body>
        <% EditInventoryId.doEdit();
          out.print("Your part has been edited in the Motor City "
                  + "Inventory database!");
          %>
        <FORM METHOD="LINK" ACTION="InventoryList.jsp">
            <INPUT TYPE="submit" VALUE="Return to Inventory List">
        </FORM>
    </body>
</html>