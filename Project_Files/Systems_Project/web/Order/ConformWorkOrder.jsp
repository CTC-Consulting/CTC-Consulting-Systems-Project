<%-- 
    Document   : ConformWorkOrder
    Created on : Mar 14, 2012, 7:58:08 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Order.WorkOrder" %>
<jsp:useBean id = "WorkOrder" 
      class = "Order.WorkOrder" scope = "session"></jsp:useBean>
<jsp:setProperty name = "WorkOrder" property = "*" />


<%@page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch" 
      class = "Customers.CustomerSearch" scope = "session"></jsp:useBean>
<jsp:setProperty name = "CustomerSearch" property = "*" />

<%@page import= "java.sql.* " %>
<%@page import = "EmployeeLogin.Login" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Conform</title>
    </head>
    <body class="center">
        
        <% 
        WorkOrder.cus_id = CustomerSearch.getCus_id();
        WorkOrder.doCreateWorkOrder();%>
        
        <% out.print( " " + CustomerSearch.getLastName() + ". " + CustomerSearch.getFirstName() + ", thank you for  choosing Motor City Repair. " + "<br/>"
                + "Your service number is: " + WorkOrder.autoIncKeyFromFunc + "<br/>"
                +"Your total is: " + WorkOrder.total + "<br/>"
                + "Please bring this ticket to see our casher! "); %>  
                <br/> <br/><br/>
    
         <% String totalString = (request.getParameter("total"));
         int total = Integer.parseInt(totalString); 
         Statement dbInitializer = Login.dbInitializer();
         for (int i=1; i <= total; i++) {
             String serviceIdString = "serviceId" + i;
             String serviceNameString = "serviceName" + i;
             String serviceChargeString = "serviceCharge" + i;
             String serviceDetailString = "serviceDetail" + i;
             String serviceQtyString = "serviceQty" + i;
             
             try {
        dbInitializer.executeUpdate("insert into lineitem (date, "
                + "invoiceNum, Service_Id, description, "
                + "parts_Total, emp_id, hrs_qty, rate) values ('" + 
                WorkOrder.now() + "', '" + WorkOrder.autoIncKeyFromFunc + "', '"
                + (request.getParameter(serviceIdString))
                + "', '" + (request.getParameter(serviceDetailString))
                + "', '" + (request.getParameter(serviceChargeString))
                + "', '" + WorkOrder.getEmp_id()
                + "', '" + (request.getParameter(serviceQtyString))
                + "', '" + WorkOrder.getRate() + "');");
            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
         }
         
         
         
         %>
    <input type="button" value="Print this page" onClick="window.print()">
   
    <br />
    <br />
    <br />
    
                
                
                
                <% out.print( "For testing only: "
                       + " <br/>" +
                        "Location:  " +  WorkOrder.getLocation() + "     TimeIn: " + WorkOrder.now() + "     EMP_ID:  " + WorkOrder.getEmp_id() + "    TOTAL:  "
                + WorkOrder.total + "    VIN_ID:  " + CustomerSearch.getVin() + "     CUSTOMER_ID:  " + CustomerSearch.getCus_id() + "     INVOICE NUMBER:  " + WorkOrder.autoIncKeyFromFunc); %>
                
    </body>
</html>
