<%-- 
    Document   : DeleteInventoryCheck
    Created on : Mar 6, 2012, 12:57:32 PM
    Author     : mshank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.DeleteInventory" %>

<jsp:useBean id = "DeleteInventoryId" 
      class = "Inventory.DeleteInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "DeleteInventoryId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Added Inventory</title>
    </head>
    <body>
        <% DeleteInventoryId.doDelete();
          out.print("Your part has been deleted in the Motor City "
                  + "Inventory database!");
          %>
        <FORM METHOD="LINK" ACTION="InventoryList.jsp">
            <INPUT TYPE="submit" VALUE="Return to Inventory List">
        </FORM>
    </body>
</html>