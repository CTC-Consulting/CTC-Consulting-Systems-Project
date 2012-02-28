<%-- 
    Document   : InventoryEdit
    Created on : Feb 28, 2012, 1:28:02 PM
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
        <title>Edit Inventory</title>
    </head>
    <body>
        <h1>Edit Inventory Page</h1>
        <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for parts list
                try {
                    ResultSet parts = dbInitializer.executeQuery("select * from parts "
                            + "where partNum = " + request.getParameter("partNum")
                            + ";");
                    
                    // Display part
                    while (parts.next()) { %>
       Item Number: <% out.print(parts.getString("partNum")); %>    
       <form method ="get" action ="EditInventoryCheck.jsp">
            Part:
            <input type = "text" name = "partName" 
                   value ="<% out.print(parts.getString("part")); %>"/><br />
            Description:
            <input type = "text" name = "partDescription"
                   value ="<% out.print(parts.getString("description")); %>"/><br />
            Manufacturer:
            <input type = "text" name = "partManufacturer"
                   value ="<% out.print(parts.getString("manufacturer")); %>"/><br />
            Cost:
            <input type = "text" name = "partCost"
                   value ="<% out.print(parts.getString("cost")); %>"/><br />
            Price:
            <input type = "text" name = "partPrice"
                   value ="<% out.print(parts.getString("price")); %>"/><br />
            <p><input type = "submit" name = "Submit"
                      value = "Edit" />
                <input type = "reset" value = "Reset" />
            </p>
        </form>
            <%      } 
                  }
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }  %>
         
    </body>
</html>
