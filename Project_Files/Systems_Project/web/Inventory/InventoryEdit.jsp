<%-- 
    Document   : InventoryEdit
    Created on : Feb 28, 2012, 1:28:02 PM
    Author     : Matthew Shank

   This .jsp is used in the process to edit a part in the inventory database.
   This file will send the updated data to EditInventoryCheck.
   This file also has a button allowing for deletion of data, and sends the user
       to the InventoryDelete page.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*;" %>
<%@page import = "javax.swing.*;" %>
<%@page import = "java.awt.*;" %>
<%@page import = "EmployeeLogin.Login" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Edit Inventory </title>
     </head>
   <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs -Edit Inventory Page </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
       
        <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for the part user selected
                try {
                    ResultSet parts = dbInitializer.executeQuery
                            ("select * from parts where partNum = " +
                            request.getParameter("partNum") + ";");
                    
                    // Display part information to user, allowing for edits
                    while (parts.next()) { %>
       Item Number: <% out.print(parts.getString("partNum")); %>    
       <form method ="get" action ="EditInventoryCheck.jsp">
            <input type="hidden" name="itemNumber"
                   value="<% out.print(parts.getString("partNum")); %>">
            Part:
            <input type = "text" name = "partName" 
                   value ="<% out.print(parts.getString("part")); %>"/><br />
            Description:
            <input type = "text" name = "partDescription"
                   value ="<% out.print(parts.getString("description")); %>"/>
            <br />
            Manufacturer:
            <input type = "text" name = "partManufacturer"
                   value ="<% out.print(parts.getString("manufacturer")); %>"/>
            <br />
            Cost:
            <input type = "text" name = "partCost"
                   value ="<% out.print(parts.getString("cost")); %>"/><br />
            Price:
            <input type = "text" name = "partPrice"
                   value ="<% out.print(parts.getString("price")); %>"/><br />
            Quantity:
            <input type = "text" name = "partQuantity"
                   value ="<% out.print(parts.getString("quantity")); %>"/>
            <br />
            <!-- Confirm new part data and send to EditInventoryCheck page  -->
            <p><input type = "submit" name = "Submit"
                      value = "Edit" />
            <!-- Reset button to reset what the user has entered  -->    
                <input type = "reset" value = "Reset" />
            </p>
        </form>
            <!-- Delete button in case the user wants the part deleted  -->
            <form method ="get" action="InventoryDelete.jsp">
                    <input type="hidden" name="partNum"
                           value="<% out.print(parts.getString
                                   ("partNum")); %>">
                    <input type="Submit" name="Submit" value="Delete Part">
            </form>
            <%      } 
                  }
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }  %>
         
   </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
