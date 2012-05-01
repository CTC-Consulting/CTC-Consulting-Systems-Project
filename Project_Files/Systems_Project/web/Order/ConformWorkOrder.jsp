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
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Confirm Work Order </title>
       
    </head>
    <body class="center">
        <div id="main">
     <div id="header1">
            <br />
            <b> Motor City Repairs - Confirm Work Order </b>
       </div> 
        <div id="indexCenter">
             <br />
              <br />
    <%--create a new work order record --%>
    <%  WorkOrder.cus_id = CustomerSearch.getCus_id();%>
    <%--connect with the datebase, try to create a new line item table --%>    
    <%   double lineTotalE = 0;
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
             lineTotalE += lineTotalA*lineTotalB ;
             WorkOrder.total = lineTotalE;
                         }
             WorkOrder.doCreateWorkOrder(); 
        
          
          
             for (int j=1; j <= total; j++) {
             String serviceIdString1 = "serviceId" + j;
             String serviceNameString1 = "serviceName" + j;
             String serviceChargeString1 = "serviceCharge" + j;
             String serviceDetailString1= "serviceDetail" + j;
             String serviceQtyString1 = "serviceQty" + j;
             
             double lineTotalG = Double.parseDouble(request.getParameter(serviceChargeString1));
             double lineTotalH = Double.parseDouble(request.getParameter(serviceQtyString1));
             double lineTotalF = lineTotalG * lineTotalH;

             try {
        dbInitializer.executeUpdate("insert into lineitem (date, "
                + "invoiceNum, Service_Id, description, "
                + "rate, emp_id, hrs_qty, line_total) values ('" + 
                WorkOrder.now() + "', '" + WorkOrder.autoIncKeyFromFunc + "', '"
                + (request.getParameter(serviceIdString1))
                + "', '" + (request.getParameter(serviceNameString1))
                + "', '" + (request.getParameter(serviceChargeString1))
                + "', '" + WorkOrder.getEmp_id()
                + "', '" + (request.getParameter(serviceQtyString1))
                + "', '" + lineTotalF + "');");
            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
         } %>
        
          <%--print our the confirmmation --%>
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
                <%--button for search invoice --%>
                <form method="post" action="../Invoices/InvoiceSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Search Invoice"> 
                </form> 
                <%--button for place another order --%>
                <form method="post" action="../Customers/CustomerSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Place another Order"> 
                </form> 
                
               
   
    <br />
    <br />
    <br />
               
               
   </div>
          <div id="footer">
             <br/><h4>&copy;2012 Motor City Repairs </h4>
          </div>
       </div>
    </body>
</html>
