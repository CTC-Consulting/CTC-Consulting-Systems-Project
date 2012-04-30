<%-- 
    Document   : WorkOrderCheck
    Created on : Feb 24, 2012, 12:51:32 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Order.WorkOrder" %>
<jsp:useBean id = "WorkOrder" 
      class = "Order.WorkOrder" scope = "session"></jsp:useBean>
<jsp:setProperty name = "WorkOrder" property = "*" />
<%@page import= "java.sql.* " %>
<%@page import="EmployeeLogin.Login" %>

<%@page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch" 
      class = "Customers.CustomerSearch" scope = "session"></jsp:useBean>
<jsp:setProperty name = "CustomerSearch" property = "*" />

<%@page import = "java.sql.*;" %>
<%@page import = "javax.swing.*;" %>
<%@page import = "java.awt.*;" %>
<%@page import = "EmployeeLogin.Login" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Order Check</title>
    </head>
    <body >
      <%-- check null values --%>
      <% WorkOrder.total = 0;
      if((WorkOrder.getEmp_id() == null) && (WorkOrder.getId() == 0 )&& (WorkOrder.service_id == 0)) {
         out.print("All fills are requried!"); 
                     }  else { %>
       <%--print out the current time and date --%>         
       <p> <%= new java.util.Date() %> </p>
       
       <%--get customer information --%>
       <p><% CustomerSearch.getInfo(); 
          out.print(" " + CustomerSearch.getLastName() + " , " + CustomerSearch.getFirstName() 
         + "<br /> " + CustomerSearch.getStreet() + ", " + CustomerSearch.getCity() + " , " + CustomerSearch.getState() + " " + CustomerSearch.getZip());  %>
        
        <%--get employee information --%>
        <p>  <% WorkOrder.checkEmp(); 
           out.print("Check in employee:  " + " " + WorkOrder.getLastName() + ", " +WorkOrder.getFirstName()); %> 
        
        <%--get location information --%>
        <p>   <% WorkOrder.checkLocation();
                out.print("Service loction: " + " " + WorkOrder.getAddress() + " , " + WorkOrder.getLocation() + " " + WorkOrder.getPhone()); %> </p>
        
        <%--ask user to enter the labor charge and quantity --%>
       <p style="color:red" >     <% out.print("Please enter the labor charge and quantity below: "); %> </p>
           
        <%--get the selected service need for the vehicle into an editable table--%>
       <p>  <table border="1" cellspacing="10" bgcolor="#FFFFFF" WIDTH=75% align ="center" >
            <td> 
            <tr><th><b>Service ID </b> </th>
             <th><b>Service Name</b></th>
             <th><b>Charge </b></th>
             <th><b>Detail </b></th>
             <th><b>Quantity </b></th></tr>
            <form method = "get" action="ConformWorkOrder.jsp" >
            <tr> 
             <% 
             int total = 1;
             String serviceIdString = "serviceId" + total;
             String serviceNameString = "serviceName" + total;
             String serviceChargeString = "serviceCharge" + total;
             String serviceDetailString = "serviceDetail" + total;
             String serviceQtyString = "serviceQty" + total;
             %>
             <tr><td>
                <input type = "text" name = "<% out.print(serviceIdString); %>"   
                   value ="0" /></td><td>
                <input type = "text" name = "<% out.print(serviceNameString); %>"   
                   value ="Labor"/></td><td>    
                <input type = "text" name = "<% out.print(serviceChargeString); %>"   
                   value ="<% WorkOrder.getRate(); %>" required/></td><td>
                <input type = "text" name = "<% out.print(serviceDetailString); %>"   
                   value ="Hourly Labor Charge"/></td><td>
                <input type = "text" name = "<% out.print(serviceQtyString); %>"   
                   value ="1" required/></td><tr>
             <%
               String[] array = request.getParameterValues("service_id");
               if (array != null) {
               for( int i = 0; i < array.length; i++) {
               total = total + 1;
               WorkOrder.service_id = Integer.parseInt(array[i]);                
               WorkOrder.checkServiceId();
               serviceIdString = "serviceId" + total;
               serviceNameString = "serviceName" + total;
               serviceChargeString = "serviceCharge" + total;
               serviceDetailString = "serviceDetail" + total;
               serviceQtyString = "serviceQty" + total;
               %>
            <tr><td>
                <input type = "text" name = "<% out.print(serviceIdString); %>"   
                   value ="<% out.print(WorkOrder.service_id); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceNameString); %>"   
                   value ="<% out.print(WorkOrder.getServiceName()); %>"/></td><td>    
                <input type = "text" name = "<% out.print(serviceChargeString); %>"   
                   value ="<% out.print(WorkOrder.getCharge()); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceDetailString); %>"   
                   value ="<% out.print(WorkOrder.getDetail()); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceQtyString); %>"   
                   value ="1"/></td><tr>
             <%    }       }  %>
             
             <%--get the  selected parts need for the vehicle into an editable table--%>      
             <% String[] partsArray = request.getParameterValues("part_id");
             Statement dbInitializer = Login.dbInitializer();
             if (partsArray != null) {
             for( int i = 0; i < partsArray.length; i++) {
               total = total + 1;
               serviceIdString = "serviceId" + total;
               serviceNameString = "serviceName" + total;
               serviceChargeString = "serviceCharge" + total;
               serviceDetailString = "serviceDetail" + total;
               serviceQtyString = "serviceQty" + total;               
                
               // Search for parts list
                try {
                    ResultSet parts = dbInitializer.executeQuery
                            ("select * from parts where partNum = " +
                            Integer.parseInt(partsArray[i]) + ";");
                    
                    // Display part
                    while (parts.next()) { 
                     %>
                <tr><td>
                <input type = "text" name = "<% out.print(serviceIdString); %>"   
                   value ="<% out.print(parts.getString("partNum")); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceNameString); %>"   
                   value ="<% out.print(parts.getString("part")); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceChargeString); %>"   
                   value ="<% out.print(parts.getString("price")); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceDetailString); %>"   
                   value ="<% out.print(parts.getString("description")); %>"/></td><td>
                <input type = "text" name = "<% out.print(serviceQtyString); %>"   
                   value ="1"/></td><tr>       
                <%            }
                    } 
                  
                //  Catch exception for error
                catch (SQLException ex) {
                    ex.printStackTrace();
                }}  }%>
                    </td></tr>   </table> 
                    <p align="center"> <input type = "hidden" name = "total"   
                   value ="<% out.print(total); %>"/>       
         <input type = "submit" value = "Submit" />
                <input type = "reset" value = "Reset" />
            </p>               
            </form>
     
       
    </p>    
    <% }%>
    
   </body>
    
</html>

