<%-- 
    Document   : QuantityAdd
    Created on : Mar 6, 2012, 1:33:49 PM
    Author     : mshank
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
        <title>Add Quantity</title>
    </head>
    <body>
        <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for parts list
                try {
                    ResultSet parts = dbInitializer.executeQuery("select * from "
                            + "parts " 
                            + "where partNum = " + request.getParameter("partNum")
                            + ";");
                    
                    // Display part
                    while (parts.next()) { %>
       Item Number: <% out.print(parts.getString("partNum")); %> <br />
       Part: <% out.print(parts.getString("part")); %> <br />
       Description: <% out.print(parts.getString("description")); %> <br />
       Manufacturer: <% out.print(parts.getString("manufacturer")); %> <br />
       Cost: <% out.print(parts.getString("cost")); %> <br />
       Price: <% out.print(parts.getString("price")); %> <br />
       Quantity: <% out.print(parts.getString("quantity")); %> <br /> <br />
       
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
       <FORM METHOD="LINK" ACTION="InventoryList.jsp">
            <INPUT TYPE="submit" VALUE="Return to Inventory List">
       </FORM>
    </body>
</html>
