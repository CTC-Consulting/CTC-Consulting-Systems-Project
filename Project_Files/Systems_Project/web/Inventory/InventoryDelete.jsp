<%-- 
    Document   : InventoryDelete
    Created on : Mar 6, 2012, 12:59:29 PM
    Author     : Matthew Shank

    This .jsp is used in the procces to delete a part from the database.
    This file is used to confirm that the user does want to delete the part.
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
        <title>Motor City Repairs - Delete Part</title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Delete Part</b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
        <!-- Display warning to user -->
        <h1 style = "color: red" > Warning!!! </h1>
        <h2>Deleting a part from the database cannot be reversed.</h2> 
        <h2> Are you sure you want to delete this part? </h2>  <br /> <br />
        
        <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for the part user selected
                try {
                    ResultSet parts = dbInitializer.executeQuery
                            ("select * from parts " 
                            + "where partNum = " + request.getParameter
                            ("partNum") + ";");
                    
                    // Display part information to user
                    while (parts.next()) { %>
       Item Number: <% out.print(parts.getString("partNum")); %> <br />
       Part: <% out.print(parts.getString("part")); %> <br />
       Description: <% out.print(parts.getString("description")); %> <br />
       Manufacturer: <% out.print(parts.getString("manufacturer")); %> <br />
       Cost: <% out.print(parts.getString("cost")); %> <br />
       Price: <% out.print(parts.getString("price")); %> <br />
       Quantity: <% out.print(parts.getString("quantity")); %> <br /> <br />
       
       <!-- Button to confirm user wants to delete part, and send part number to 
           DeleteInventoryCheck page   -->
       <form method ="get" action="DeleteInventoryCheck.jsp">
                    <input type="hidden" name="itemNumber"
                           value="<% out.print(parts.getString
                                   ("partNum")); %>">
                    <input type="Submit" name="Submit" value="Delete Part">
       </form> <br />
                    <%      } 
                  }
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }  %>
       <!-- Return to Inventory List  -->
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
