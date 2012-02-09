<%-- 
    Document   : InventoryList
    Created on : Feb 7, 2012, 12:05:57 PM
    Author     : Matthew Shank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Control</title>
    </head>
    <body>
        <h1>Motor City Repairs Inventory</h1>
        <table border="1">
            <tr>
                <Th>Part</th>
                <th>Description</th>
                <th>Manufacturer</th>
                <th>Cost</th>
                <th>Price</th>
            </tr>
            <% for (int i = 0; i<4; i++) { %>
            <tr>
                <td>Part Data</td>
                <td>Description Data</td>
                <td>Manufacturer Data</td>
                <td>Cost Data</td>
                <td>Price Data</td>
            </tr>
            <% } %>
        </table>
        <br />
        <FORM METHOD="LINK" ACTION="InventoryAdd.jsp">
            <INPUT TYPE="submit" VALUE="Add Inventory">
        </FORM>
    </body>
</html>