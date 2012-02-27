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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Order Check</title>
    </head>
    <body>
        
        <p>  <% WorkOrder.checkEmp(); 
                out.print("" + WorkOrder.getFirstName() + "" +WorkOrder.getLastName() + "" +WorkOrder.getRate()); %>
                
        <p>   <% WorkOrder.checkLocation();
                out.print("" + WorkOrder.getAddress() + "" + WorkOrder.getLocation() + "" + WorkOrder.getPhone()); %> </p>
        
        <p>   <%  
                String[] array = request.getParameterValues("service_id");
            //    WorkOrder.checkServiceId(); 
               for( int i = 0; i < array.length; i++) { 
            //     i = WorkOrder.getService_id();                                                                                    
                 WorkOrder.checkServiceId(); 
                 out.print("" + WorkOrder.getService_id() + "" + WorkOrder.getServiceName() + "" + WorkOrder.getCharge() 
                          + "" + WorkOrder.getDetail() );    
             }  
                %> </p>
        
                 <%--   Integer.parseInt(val[i])== WorkOrder.getService_id();
                 //   WorkOrder.checkServiceId();
                 //   out.print(WorkOrder.getServiceName() +"");
                   //     ("" + WorkOrder.getServiceName() + "" +WorkOrder.getCharge() 
                   //         + "" +WorkOrder.getDetail() + '\n' );
                   //                               %> </p>
 
      
        <%-- <TABLE BORDER=2>
         for ( int i = 0; i < n; i++ ) {
        <TR>
        <TD>Number</TD>
        <TD><%= i+1 %></TD>
        </TR>
       
    }
    </TABLE>
   --%>
          
        
    </body>
    
</html>
