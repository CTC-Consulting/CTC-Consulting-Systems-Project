<%-- 
    Document   : SaveUpdate
    Created on : Apr 16, 2012, 8:36:35 PM
    Author     : Joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.Timestamp;" %>
<%@page import = "java.util.Date" %>
<%@page import = "InvoicePk.Invoice" %>
<%@page import = "InvoicePk.UpdateInvoice" %>

<% java.util.Date date= new java.util.Date(); %>

<jsp:useBean id="UpdateInvoice" 
      class="InvoicePk.UpdateInvoice" scope="session">
</jsp:useBean>

<jsp:useBean id = "Invoice" 
      class = "InvoicePk.Invoice" scope = "session">
</jsp:useBean>

<jsp:setProperty name="UpdateInvoice" property = "*"/>
<jsp:setProperty name = "Invoice" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        
        <form method = "post" action = "statement.jsp">
         

        <input type="hidden" name="invoiceNum" value="<%= Integer.valueOf(request.getParameter("invoiceNum")) %>">
        <input type="hidden" name="location" value="<%= UpdateInvoice.getLocation() %>">
        <input type="hidden" name="emp_id" value="<%= UpdateInvoice.getEmp_id() %>">
        <input type="hidden" name="cus_id" value="<%= UpdateInvoice.getCus_id() %>">
        <input type="hidden" name="vin" value="<%= UpdateInvoice.getVin() %>">
        <input type="hidden" name="total" value="<%= UpdateInvoice.getTotal() %>">
        <input type="hidden" name="payment" value="<%= UpdateInvoice.getPayment() %>">
        <input type="hidden" name="Payment_Date" value="<%= request.getParameter("Payment_Date") %>">
        <input type="hidden" name="Payment_Type" value="<%= UpdateInvoice.getPayment_Type() %>">
        <input type="hidden" name="balance" value="<%= UpdateInvoice.getBalance() %>">
        <input type="hidden" name="status" value="<%= UpdateInvoice.getStatus() %>">
        
         <% UpdateInvoice.calculate(); %>
         
        
      <%--  <input type="submit" value="Continue">  --%>
      <h2>Transaction Summary</h2>
      <table border = "2" width = "500" >
                   
          <th> Parameter    </th>
          <th> Value    </th>
          
       <tr><td>Invoice Number:</td><td><% out.print(UpdateInvoice.getInvoiceNum()); %></td></tr>
       <tr><td>Location:</td><td><% out.print(UpdateInvoice.getLocation()); %> </td></tr>
       <tr><td>Employee ID:</td><td><% out.print(UpdateInvoice.getEmp_id()); %></td></tr>
       <tr><td>Customer ID:</td><td><% out.print(UpdateInvoice.getCus_id()); %></td></tr>
       <tr><td>VIN:</td><td><% out.print(UpdateInvoice.getVin()); %></td></tr>
       <tr><td>Payment Date:</td><td><%= request.getParameter("Payment_Date")%></td></tr>
       <tr><td>Payment Type:</td><td><%= request.getParameter("drop")%></td></tr>
       <tr><td>Total:</td><td><% out.print(UpdateInvoice.getTotal()); %></td></tr>
       <tr><td>Payment:</td><td><% out.print(UpdateInvoice.getPayment()); %></td></tr>
       <tr><td>Updated Balance:</td><td><% out.print(UpdateInvoice.getBalance()); %></td></tr>
      <tr><td>Status:</td><td><% out.print(UpdateInvoice.getStatus()); %></td></tr>
      
      </table> 
      <A HREF="statement.jsp">Click to Commit Changes</A> 
        </form>
      

                
        
        </body>
</html>