.<%-- 
    Document   : WorkOrder
    Created on : Feb 23, 2012, 9:35:59 PM
    Author     : Xia
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Order.WorkOrder" %>
<jsp:useBean id = "WorkOrder" 
      class = "Order.WorkOrder" scope = "session"></jsp:useBean>
<jsp:setProperty name = "WorkOrder" property = "*" />

<%@page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch"
      class = "Customers.CustomerSearch" scope = "session"></jsp:useBean>
<jsp:setProperty name = "CustomerSearch" property = "*" />
<jsp:useBean id = "NewCustomers"
      class = "Customers.NewCustomers" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewCustomers" property = "*" />
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle"
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />

<%@page import = "java.sql.*;" %>
<%@page import = "javax.swing.*;" %>
<%@page import = "java.awt.*;" %>
<%@page import = "EmployeeLogin.Login" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Work Order </title>
    </head>
    <body>
      <div id="main">
     <div id="header1">
            <br />
            <b> Motor City Repairs - Work Order </b>
       </div> 
        <div id="indexCenterIL">
             <br />
             <br />
     <form method = "get" action="WorkOrderCheck.jsp" >
      <%--print out the current time and date --%>
      <%= new java.util.Date() %> 
      
      <%--get the customer and vehicle information for the order --%>
      <% CustomerSearch.cus_id = NewVehicle.getCus_id(); 
         WorkOrder.cus_id = CustomerSearch.getCus_id();
         CustomerSearch.getInfo();
         CustomerSearch.checkVin();
         WorkOrder.vin = CustomerSearch.getVin();  %>
         
      <%--get employee id --%>
      <p><label>* Please enter your employee ID:</label>
          <input type="text" name="emp_id" requried> </p>
      
      <%--get sevice location information --%>
      <p> <label> * Location:</label>
         <SELECT name ="id" requried> 
           <NAME="drop" SIZE=1 >
               <OPTION value="0"> </option> 
               <OPTION value="1"> Marys Garage </option>
               <OPTION value="2"> Motor City Repair North </option>
               <OPTION value="3"> Motor City Repair South </option>
               <OPTION value="4"> Fifth Street Garage </option>
         </SELECT>  </p>
      
      <%--check box for the service needed --%>
      <p> <label> * Service name:(select all that apply) </label> </br>
      <input type="checkbox" name ="service_id" value="1"> Oil & Filter Change </br>
      <input type="checkbox" name ="service_id" value="2"> mini-service </br>
      <input type="checkbox" name ="service_id" value="3"> Tire Rotation & Balance </br>
      <input type="checkbox" name ="service_id" value="4"> Brake Service </br>
      <input type="checkbox" name ="service_id" value="5"> Standard Car Wash </br>
      <input type="checkbox" name ="service_id" value="6"> Car Detailing </br>
      <input type="checkbox" name ="service_id" value="7"> Engine Change Out </br>
      <input type="checkbox" name ="service_id" value="8"> Minor Services 4 cyl </br>
      <input type="checkbox" name ="service_id" value="9"> Minor Services 6 cyl </br>
      <input type="checkbox" name ="service_id" value="10"> Major Services 4 cyl </br>
      <input type="checkbox" name ="service_id" value="11"> Major Services 6 cyl </br>
     </p>
     </br>
     <%--check box for the part needed --%>
     <label> * Parts used:(select all that apply) </label> </br>
     <table>
            <tr>
       <%--     <Th>Part #</th>  --%>
                <Th>Part</th>
                <th>Description</th>
                <th>Manufacturer</th>
                <th>Cost</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            
            <%--get part selection from the part table--%>
            <%  Statement dbInitializer = Login.dbInitializer();
                
                // Search for parts list
                try {
                    ResultSet parts = dbInitializer.executeQuery
                            ("select * from parts");
                    
                    // Display results to user
                    while (parts.next()) { %>
            <tr>
      <%--      <td><% out.print(parts.getString("partNum")); %></td>  --%>
                <td><% out.print(parts.getString("part")); %></td>
                <td><% out.print(parts.getString("description")); %></td>
                <td><% out.print(parts.getString("manufacturer")); %></td>
                <td><% out.print(parts.getString("cost")); %></td>
                <td><% out.print(parts.getString("price")); %></td>
                <td><% out.print(parts.getString("quantity")); %></td>
                <td>
                <input type="checkbox" name="part_id"
                           value="<% out.print(parts.getString
                                   ("partNum")); %>"></td>
            
            </tr>
                                   
             <%      } 
                  }
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }  %>   
       
     </table>
     
     <input type="submit" name ="Submit" value="Submit" >
    </form>
         </div>
          <div id="footer">
             <br/><h4>&copy;2012 Motor City Repairs </h4>
          </div>
       </div>
    </body>
</html>
