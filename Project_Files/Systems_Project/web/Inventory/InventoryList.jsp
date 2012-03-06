<%-- 
    Document   : InventoryList
    Created on : Feb 7, 2012, 12:05:57 PM
    Author     : Matthew Shank
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
        <title>Inventory Control</title>
    </head>
    <body>
        <h1>Motor City Repairs Inventory</h1>
        <table border="1">
            <tr>
                <Th>Part #</th>
                <Th>Part</th>
                <th>Description</th>
                <th>Manufacturer</th>
                <th>Cost</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for parts list
                try {
                    ResultSet parts = dbInitializer.executeQuery
                            ("select * from parts");
                    
                    // Display results to user
                    while (parts.next()) { %>
            <tr>
                <td><% out.print(parts.getString("partNum")); %></td>
                <td><% out.print(parts.getString("part")); %></td>
                <td><% out.print(parts.getString("description")); %></td>
                <td><% out.print(parts.getString("manufacturer")); %></td>
                <td><% out.print(parts.getString("cost")); %></td>
                <td><% out.print(parts.getString("price")); %></td>
                <td><% out.print(parts.getString("quantity")); %></td>
                <td>
                <form method ="get" action="QuantityAdd.jsp">
                    <input type="hidden" name="partNum"
                           value="<% out.print(parts.getString
                                   ("partNum")); %>">
                    <input type="Submit" name="Submit" value="Add Qty">
                </form></td>
                <td>
                <form method ="get" action="InventoryEdit.jsp">
                    <input type="hidden" name="partNum"
                           value="<% out.print(parts.getString
                                   ("partNum")); %>">
                    <input type="Submit" name="Submit" value="Edit Inv">
                </form></td>
            </tr>
            <%      } 
                  }
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }  %>
        </table>
        <br />
        <FORM METHOD="LINK" ACTION="InventoryAdd.jsp">
            <INPUT TYPE="submit" VALUE="Add New Inventory">
        </FORM>
    </body>
</html>