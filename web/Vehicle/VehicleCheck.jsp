<%-- 
    Document   : VehicleCheck
    Created on : Feb 22, 2012, 12:10:43 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conform Vehicle Information</title>
    </head>
    <body>
       <% NewVehicle.doCreate();%>
       <% out.print("The vehicle number "+ NewVehicle.getVin() +"  is now registered in the Motor City Vehicle database!");
        out.close(); %>
      
    </body>
</html>
