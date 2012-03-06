<%-- 
    Document   : InventoryAdd
    Created on : Feb 7, 2012, 12:07:18 PM
    Author     : mshank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Add</title>
    </head>
    <body>
        <h1>Motor City Repairs Inventory</h1>
        <form method ="get" action ="AddInventoryCheck.jsp">
            Part
            <input type = "text" name = "partName" /><br />
            Description
            <input type = "text" name = "partDescription" /><br />
            Manufacturer
            <input type = "text" name = "partManufacturer" /><br />
            Cost
            <input type = "text" name = "partCost" /><br />
            Price
            <input type = "text" name = "partPrice" /><br />
            Quantity
            <input type = "text" name = "partQuantity" /><br />
            <p><input type = "submit" name = "Submit"
                      value = "Add New Inventory" />
                <input type = "reset" value = "Reset" />
            </p>
        </form>
    </body>
</html>
