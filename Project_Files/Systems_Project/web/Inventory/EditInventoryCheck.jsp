<%-- 
    Document   : EditInventoryCheck
    Created on : Mar 6, 2012, 11:56:58 AM
    Author     : mshank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.EditInventory" %>
<%@page import = "Inventory.DataCheck" %>

<jsp:useBean id = "EditInventoryId" 
      class = "Inventory.EditInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "EditInventoryId" property = "*" />
<jsp:useBean id = "DataCheckId" 
      class = "Inventory.DataCheck" scope = "session"></jsp:useBean>
<jsp:setProperty name = "DataCheckId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Added Inventory</title>
    </head>
    <body>
        <% 
        boolean able = DataCheckId.doubleCheck(request.getParameter
                ("partCost"));
        if (able == true){
            able = DataCheckId.doubleCheck(request.getParameter
                    ("partPrice"));
            if (able == true)
                able = DataCheckId.intCheck(request.getParameter
                        ("partQuantity"));
        }
        if (able == true){
        EditInventoryId.doEdit();
          out.print("Your part has been edited in the Motor City "
                  + "Inventory database!");
                   }
               else {
            out.print("Error editting database.  Please go back to the "
                    + "previous screen, check you input, and try again.");
               }
          %>
        <FORM METHOD="LINK" ACTION="InventoryList.jsp">
            <INPUT TYPE="submit" VALUE="Return to Inventory List">
        </FORM>
    </body>
</html>