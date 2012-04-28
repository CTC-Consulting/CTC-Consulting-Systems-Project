<%-- 
    Document   : Vehicle
    Created on : Feb 22, 2012, 11:50:56 AM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />
<%@ page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="CustomerSearch" property="*" />
<%@page import = "Customers.NewCustomers" %>
<jsp:useBean id = "NewCustomers" class = "Customers.NewCustomers"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="NewCustomers" property="*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Add New Vehicle </title>
    </head>
    <body>
        
    <div id="main">
    <div id="header1">
          <br />
          <b> Motor City Repairs - Add New Vehicle </b>
      </div>
      <div id="indexLeftColumn">
          <br />
          <h3>Please enter vehicle information: </h3>
          <h4 style = "color: red">  * Required fields ! </h4>
      </div>
      <div id="indexRightColumn1">  
      <form method = "get" action = "VehicleCheck.jsp">
      <% NewVehicle.cus_id = NewCustomers.cus_id; %>
        <br />
         <br />
          <br />
 	<table border="0" cellspacing="2" cellpadding="2">
        <tbody>
         <tr>
             <%--get a new vehicle information --%>
            <td> <h3> * Vehicle ID Number </h3>  </td>
            <td colspan="2"><input type =" text" name ="vin" required /> </td>
            <td></td>
           </tr>
         <tr>
            <td><h3> * Year </h3></td>
            <td><input type =" text" name ="myear" required /></td>
            <td></td>
            <td></td>
           </tr>
         <tr>
            <td><h3> * Make </h3></td>
            <td><input type =" text" name ="make" required /></td>
            <td><h3> * Model </h3> </td>
            <td><input type =" text" name ="model" required /> </td>
           </tr>
         <tr>
            <td><h3> * Exterior </h3></td>
            <td><input type =" text" name ="exterior" required /></td>
            <td><h3> * Interior </h3> </td>
            <td><input type =" text" name ="interior" required /></td>
           </tr>
           <tr>
            <td> </td>
            <td> &#32;&#32;</td>
            <td> &#32;&#32; </td>
            <td>  </td>
           </tr>
         <tr>
            <td></td>
            <td colspan="2"> <input type = "submit" name = "Submit" value = "Submit">
                            <input type = "reset" value = "Reset"> </td>
            <td></td>
          </tr>
        </tbody>
      </table>   
     
     </form>
     </div>  
      <div id="footer">
        <br/><h4>&copy;2012 Motor City Repairs </h4>
     </div>
   </div>    
  </body>
</html>
