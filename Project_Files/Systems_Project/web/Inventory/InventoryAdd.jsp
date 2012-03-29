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
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Inventory Add</title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Add Inventory</b>
       </div>
       <div id="indexCenter">
            <form method ="get" action ="AddInventoryCheck.jsp">
           <table border="0" cellspacing="2" cellpadding="2">
            <tbody>
                <tr>
                    <td><h2> Part </h2></td>
                    <td > <input type = "text" name = "partName" /> </td>
                    </tr>
                <tr>
                    <td><h2> Description  </h2></td>
                    <td> <input type = "text" name = "partDescription" /> </td>
                    </tr>
				<tr>
                    <td><h2>  Manufacturer </h2></td>
                    <td> <input type = "text" name = "partManufacturer" />  </td>
                    </tr>
				<tr>
                    <td><h2> Cost </h2></td>
                    <td > <input type = "text" name = "partCost" /> </td>
                    </tr>
                <tr>
                    <td><h2> Price </h2></td>
                    <td> <input type = "text" name = "partPrice" /> </td>
                    </tr>
				<tr>
                    <td><h2>  Quantity </h2></td>
                    <td> <input type = "text" name = "partQuantity" />  </td>
                    </tr>
				<tr>
                    <td> </td>
                    <td> </td>
                    </tr>
                <tr>
                    <td colspan ="2"> <input type = "submit" name = "Submit"  
				                value = "Add New Inventory">
                     <input type = "reset" value = "Reset"> </td>
                    </tr>
              </tbody>
          </table> 
      <%--       Part
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
      --%>
        </form>
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
