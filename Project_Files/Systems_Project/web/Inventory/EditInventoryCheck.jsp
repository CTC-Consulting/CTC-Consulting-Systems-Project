<%-- 
    Document   : EditInventoryCheck
    Created on : Mar 6, 2012, 11:56:58 AM
    Author     : Matthew Shank

   This .jsp is used in the process to edit inventory in the database.
   This file edits the data in the database.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Import data check and edit inventory beans  -->
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
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs -  Edit Inventory </title>
     </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Confirm Edit Inventory </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
        <% 
        //  Checking entered cost to determine if it's a double
        boolean able = DataCheckId.doubleCheck(request.getParameter
                ("partCost"));
        if (able == true){
        //  Checking entered price to determine if it's a double    
            able = DataCheckId.doubleCheck(request.getParameter
                    ("partPrice"));
            if (able == true)
        //  Checking entered quantity to determine if it's an integer
                able = DataCheckId.intCheck(request.getParameter
                        ("partQuantity"));
        }
        if (able == true){
        //  If all checks are true edit inventory    
        EditInventoryId.doEdit();
          out.print("Your part has been edited in the Motor City "
                  + "Inventory database!");
                   }
               else {
        //  If any check is false display error message
            out.print("Error editting database.  Please go back to the "
                    + "previous screen, check you input, and try again.");
               }
          %>
        <!-- Link back to Inventory List  -->
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