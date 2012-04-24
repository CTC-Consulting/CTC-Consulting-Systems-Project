<%-- 
    Document   : SaveUpdate
    Created on : Apr 16, 2012, 8:36:35 PM
    Author     : Joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.Timestamp;" %>
<%@page import = "java.util.Date" %>
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

        <form method = "post" action = "invoice.jsp">
        <A HREF="Invoice.jsp">Continue</A>
        
        <input type="hidden" name="invoiceNum" value="<%= Integer.valueOf(request.getParameter("invoiceNum")) %>">
        <input type="hidden" name="location" value="<%= UpdateInvoice.getLocation() %>">
        <input type="hidden" name="emp_id" value="<%= UpdateInvoice.getEmp_Id() %>">
        <input type="hidden" name="cus_id" value="<%= UpdateInvoice.getCus_Id() %>">
        <input type="hidden" name="vin" value="<%= UpdateInvoice.getVin() %>">
        <input type="hidden" name="total" value="<%= UpdateInvoice.getTotal() %>">
        <input type="hidden" name="payment" value="<%= UpdateInvoice.getPayment() %>">
        <input type="hidden" name="Payment_Date" value="<%= request.getParameter("Payment_Date") %>">
        <input type="hidden" name="Payment_Type" value="<%= UpdateInvoice.getPayment_Type() %>">
        <input type="hidden" name="balance" value="<%= UpdateInvoice.getBalance() %>">
        <input type="hidden" name="status" value="<%= UpdateInvoice.getStatus() %>">
        
        <% UpdateInvoice.update(); %>
        <% UpdateInvoice.updateWorkOrder(); %>
        
       1- <% out.print(UpdateInvoice.getInvoiceNum()); %>,</br>
       2- <% out.print(UpdateInvoice.getLocation()); %>,</br>
       3- <% out.print(UpdateInvoice.getEmp_Id()); %>,</br>
       4- <% out.print(Invoice.getCus_id()); %>,</br>
       5- <% out.print(Invoice.getVin()); %>,</br>
       6- <% out.print(Invoice.getTotal()); %></br>,
       7- <% out.print(UpdateInvoice.getPayment()); %>,</br>
       
       8- <%= request.getParameter("Payment_Date")%></br>
       9- <%= request.getParameter("drop")%></br>
       
       11- <% out.print(UpdateInvoice.getBalance()); %>,</br>
      12-  <% out.print(UpdateInvoice.getStatus()); %>,</br>
      
        
        </form>
                
        </body>
</html>
