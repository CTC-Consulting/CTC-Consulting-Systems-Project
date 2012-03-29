<%-- 
    Document   : AddInventoryCheck
    Created on : Feb 26, 2012, 8:55:05 PM
    Author     : Matthew Shank
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Inventory.AddInventory" %>
<%@page import = "Inventory.DataCheck" %>

<jsp:useBean id = "AddInventoryId" 
      class = "Inventory.AddInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "AddInventoryId" property = "*" />
<jsp:useBean id = "DataCheckId" 
      class = "Inventory.DataCheck" scope = "session"></jsp:useBean>
<jsp:setProperty name = "DataCheckId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Confirm Added Inventory </title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Confirm Added Inventory </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
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
        AddInventoryId.doCreate();
          out.print("Your part is now registered in the Motor City "
                  + "Inventory database!");
        }
               else{
            out.print("Error adding to database.  Please go back to the "
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
