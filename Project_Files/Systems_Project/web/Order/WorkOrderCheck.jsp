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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Order Check</title>
    </head>
    <body >
      <% WorkOrder.total = 0;
      if((WorkOrder.getEmp_id() == null) && (WorkOrder.getId() == 0 )&& (WorkOrder.service_id == 0)) {
         out.print("All fills are requried!"); 
                     }  else { %>
                
       <p> <%= new java.util.Date() %> </p>
       
       <p>Customer:
          <%CustomerSearch.getInfo(); 
          out.print(" " + CustomerSearch.getLastName1() + " , " + CustomerSearch.getFirstName1() 
         + "<br /> Address: " + CustomerSearch.getStreet() + ", " + CustomerSearch.getCity() + " , " + CustomerSearch.getState() + " " + CustomerSearch.getZip());  %>
        
        <p>  <% WorkOrder.checkEmp(); 
           out.print("Check in employee:  " + " " + WorkOrder.getLastName() + ", " +WorkOrder.getFirstName()); %> 
                
        <p>   <% WorkOrder.checkLocation();
                out.print("Service loction: " + " " + WorkOrder.getAddress() + " , " + WorkOrder.getLocation() + " " + WorkOrder.getPhone()); %> </p>
        
           
             <P>  <table border="1" cellspacing="10" bgcolor="#FFFFFF" WIDTH=75% align ="center" >
            <td> 
            <tr><th><b>Service ID </b> </th>
             <th><b>Service Name</b></th>
             <th><b>Charge </b></th>
             <th><b>Detail </b><th> </tr>
            <tr> 
             <% String[] array = request.getParameterValues("service_id");
               for( int i = 0; i < array.length; i++) {   
               WorkOrder.service_id = Integer.parseInt(array[i]);                
               WorkOrder.checkServiceId();  
                      out.println(
                   "<tr><td>" + "" + WorkOrder.service_id +"</td><td>"  + 
                        "" + WorkOrder.getServiceName() + "</td><td>" +
                        "" + WorkOrder.getCharge() +"</td><td>"
                        + "" + WorkOrder.getDetail()  +"</td><tr>"
                        );}  
             %>  
        </table> 
    </p>
    
    <p align="right"><% out.print("Total " + WorkOrder.total); %>       
    <% }%>
    
    
    <p> I agree to have the above service in motor city repair, and will be responsible for the above fees.</br> <br/>
        Customer Signature: ____________________________________________________
        
    </p>
    
    <form method="get" action ="ConformWorkOrder.jsp">
    <input type="button" value="Print this page" onClick="window.print()">
    <input type ="submit" value ="Conform Order" name="submit" >
    </form>

   </body>
    
</html>

