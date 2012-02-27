<%-- 
    Document   : Vehicle
    Created on : Feb 22, 2012, 11:50:56 AM
    Author     : Xia
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a new vehicle</title>
    </head>
    <body>
        <form method = "get" action = "VehicleCheck.jsp">
         <h3>Please enter the following vehicle information: </h3>
     <p> <label> * Customer ID: </label>
         <input name="cus_id"  value="<%= CustomerSearch.getCus_id()%>" readonly> </p>
     <p> <label> * Vehicle number:</label>
         <input type = "text" name = "vin" required > </p>
     <p> <label> * Make: </label>
         <input type = "text" name = "make" required > </p>
     <p> <label> * Model: </label>
         <input type = "text" name = "model" required >  </p>
      <p><label> * Year: </label>
         <input type = "text" name = "myear"  required >  </p>
      <p><label> * Exterior: </label>
         <input type = "text" name = "exterior" required > </p>
      <p><label> * Interior: </label>
         <input type = "text" name = "interior"  required > </p>

      <p> <input type = "submit" name = "Submit" value = "Submit">
          <input type = "reset" value = "Reset"></p>
         
         <p> * required fields </p>
        </form>
    </body>
</html>
