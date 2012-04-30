<%-- 
    Document   : AddInventoryCheck
    Created on : Feb 26, 2012, 8:55:05 PM
    Author     : Matthew Shank

   This .jsp is used in the process to add new inventory to the database.
   This file sends the data to the database.
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Import database altering and data check beans  -->
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
        //  Checking entered cost to determine if it's a double
        boolean able = DataCheckId.doubleCheck(request.getParameter
                ("partCost"));
        //  Checking entered price to determine if it's a double
        if (able == true){
            able = DataCheckId.doubleCheck(request.getParameter
                    ("partPrice"));
        //  Checking entered quantity to determine if it's an integer
                if (able == true)
                able = DataCheckId.intCheck(request.getParameter
                        ("partQuantity"));
        }
        //  If checks are true create new inventory
        if (able == true){
        AddInventoryId.doCreate();
          out.print("Your part is now registered in the Motor City "
                  + "Inventory database!");
        }
               else{
         //  If any checks are false give error message
                   out.print("Error adding to database.  Please go back to the "
                    + "previous screen, check you input, and try again.");
               }
          %>
        <!--  Link back to inventory list  -->
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
