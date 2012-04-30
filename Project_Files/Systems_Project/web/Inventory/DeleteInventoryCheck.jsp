<%-- 
    Document   : DeleteInventoryCheck
    Created on : Mar 6, 2012, 12:57:32 PM
    Author     : Matthew Shank

    This .jsp is used in the process to delete inventory in the database.
    This file performs the actual deletion in the database.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Import delete inventory bean  -->
<%@page import = "Inventory.DeleteInventory" %>

<jsp:useBean id = "DeleteInventoryId" 
      class = "Inventory.DeleteInventory" scope = "session"></jsp:useBean>
<jsp:setProperty name = "DeleteInventoryId" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Delete Inventory </title>
       
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Delete Inventory </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
        <% 
        //  Perform deletion of part from database
        DeleteInventoryId.doDelete();
          out.print("Your part has been deleted in the Motor City "
                  + "Inventory database!");
          %>
        <!-- Link to return to Inventory List  -->
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