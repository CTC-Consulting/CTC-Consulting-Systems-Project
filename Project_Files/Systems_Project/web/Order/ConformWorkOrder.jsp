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
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Conform</title>
    </head>
    <body class="center">
        
        <% 
        WorkOrder.cus_id = CustomerSearch.getCus_id();
        WorkOrder.doCreateWorkOrder();%>
               
         <%  double lineTotalE = 0;
         String totalString = (request.getParameter("total"));
         int total = Integer.parseInt(totalString); 
         Statement dbInitializer = Login.dbInitializer();
         for (int i=1; i <= total; i++) {
             String serviceIdString = "serviceId" + i;
             String serviceNameString = "serviceName" + i;
             String serviceChargeString = "serviceCharge" + i;
             String serviceDetailString = "serviceDetail" + i;
             String serviceQtyString = "serviceQty" + i;
             
             double lineTotalA = Double.parseDouble(request.getParameter(serviceChargeString));
             double lineTotalB = Double.parseDouble(request.getParameter(serviceQtyString));
             double lineTotalF = lineTotalA * lineTotalB;
             lineTotalE += lineTotalF ;
             
             try {
        dbInitializer.executeUpdate("insert into lineitem (date, "
                + "invoiceNum, Service_Id, description, "
                + "rate, emp_id, hrs_qty, line_total) values ('" + 
                WorkOrder.now() + "', '" + WorkOrder.autoIncKeyFromFunc + "', '"
                + (request.getParameter(serviceIdString))
                + "', '" + (request.getParameter(serviceNameString))
                + "', '" + (request.getParameter(serviceChargeString))
                + "', '" + WorkOrder.getEmp_id()
                + "', '" + (request.getParameter(serviceQtyString))
                + "', '" + lineTotalF + "');");
            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
         }
         
         
         
         %>
         
           <% out.print( " " + CustomerSearch.getLastName() + ". " + CustomerSearch.getFirstName() + ", thank you for  choosing Motor City Repair. " + "<br/>"
                + "Your service number is: " + WorkOrder.autoIncKeyFromFunc + "<br/>"
                +"Your total is: " + lineTotalE + "<br/>"
                + "Please bring this ticket to see our casher! "); %>  
                
                <br/>
                <br/>
                <br/>
                <br/>
                
                <input type="button" value="Print this page" onClick="window.print()">
                <br/>
                <br/>
                <form method="post" action="../Invoices/InvoiceSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Search Invoice"> 
                </form> 
                
                <form method="post" action="../Customers/CustomerSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Place another Order"> 
                </form> 
                
               
   
    <br />
    <br />
    <br />
    
                
                
               
    </body>
</html>
