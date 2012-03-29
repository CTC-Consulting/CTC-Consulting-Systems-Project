<%-- 
    Document   : AddQuantityCheck
    Created on : Mar 8, 2012, 1:28:17 PM
    Author     : Matthew Shank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.EditInventory" %>
<%@page import = "Inventory.DataCheck" %>

<jsp:useBean id = "AddQuantityId" 
      class = "Inventory.EditInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "AddQuantityId" property = "*" />
<jsp:useBean id = "DataCheckId" 
      class = "Inventory.DataCheck" scope = "session"></jsp:useBean>
<jsp:setProperty name = "DataCheckId" property = "*" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs -  Confirm Added Quantity</title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs -  Added Quantity </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
        <% 
        boolean able = DataCheckId.intCheck(request.getParameter
                ("quantityAdd"));
        if (able == true){
        AddQuantityId.doAddQuantity();
          out.print("Your inventory has been updated with the added quantity!");
                          }
                  else {
                 out.print("Error editting database.  Please go back to the "
                    + "previous screen, check you input, and try again.");
                 }  
        %>
        <FORM METHOD="LINK" ACTION="InventoryList.jsp">
            <INPUT TYPE="submit" VALUE="Return to Inventory List">
        </FORM>
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>