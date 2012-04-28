<%-- 
    Document   : VehicleCheck
    Created on : Feb 22, 2012, 12:10:43 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />
<%@page import = "Customers.NewCustomers" %>
<jsp:useBean id = "NewCustomers" class = "Customers.NewCustomers"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="NewCustomers" property="*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Vehicle Check</title>
     
    </head>
    <body>
       <div id="main">
        <div id="header1">
           <br>
           <b> Motor City Repairs - Confirm Vehicle Registration </b>
        </div>
       <div id="indexCenter">
           <br>
           <br>
           <br> 
           <%--create a new vehicle record for the customer --%>
       <% NewVehicle.cus_id = NewCustomers.getCus_id(); %>
       <% NewVehicle.doCreate(); %>
       <% out.print("The vehicle number "+ NewCustomers.getVin() +
                  "  is now registered in the Motor City Vehicle database!");
        %>
      
        <br/>  <br/>  <br/>  <br/>
        <%--button for start the work order --%>
       <form method="post" action="../Order/WorkOrder.jsp">
       <input class="userButtom" type="submit" value="Start the work order"> 
        </form> 
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
        
     </div>    
   </body>
</html>
 