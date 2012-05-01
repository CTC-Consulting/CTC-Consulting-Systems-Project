<%-- 
    Document   : UpdateInvoice
    Created on : Apr 12, 2012, 5:03:44 PM
    Author     : Joe

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*;" %>
<%@page import = "java.text.*;" %>
<%@page import = "InvoicePk.Invoice" %>
<%@page import = "InvoicePk.UpdateInvoice" %>
<%@page import = "java.sql.Timestamp;" %>
<%@page import = "java.util.Date" %>

<jsp:useBean id = "Invoice" 
      class = "InvoicePk.Invoice" scope = "session">
</jsp:useBean>

<jsp:useBean id = "UpdateInvoice" 
      class = "InvoicePk.UpdateInvoice" scope = "session">
</jsp:useBean>




<jsp:setProperty name = "Invoice" property = "*" />
<jsp:setProperty name = "UpdateInvoice" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style = "text-align: center; color: #000">Update Invoice Entry Form </h1><br />
                                                                          <br />
        <% NumberFormat df = NumberFormat.getCurrencyInstance();   %>
        <% java.util.Date date= new java.util.Date(); %>
        
     <% Invoice.getInfo(); %> 
         <fieldset name="Selected Invoice">
        <legend>Selected Invoice</legend>
        
     <label> Invoice Number:</label> 
     <%= request.getParameter("invoiceNum") %><br /><br /> 
     <label> Name:</label>
     <%= Invoice.getFirst_Name()%>  <%= Invoice.getLast_Name()%> <br /><br />                                   <br />
     <label> VIN:</label>
     <%= Invoice.getVin()%><br /><br />
     <label> Invoice Total:</label>
     <%= Invoice.getTotal()%><br /><br />
     <label> Current Balance:</label>
     <%= Double.valueOf(Invoice.getBalance())%>   
         </fieldset>                        <br />
                                            <br />
                                            <br />
                                            <br />

    
    <form method = "post" action = "SaveUpdate.jsp">
    <fieldset name="ProcessPayment">
        <legend>Process Payment</legend>
        
    
    Enter Employee ID:<br />
    *<input type = "text" name = "emp_id" required /><br /><br />
    Payment Amount:<br />                                            
    *<input type = "text" name = "payment" required /><br /><br />
    
    <label> Select Payment Type:</label>    
    <SELECT name ="drop" size = 1 id="Payment_Type" >
        
            <option value="AMEX">AMEX</option>
            <option value="MCARD">MCARD</option>
            <option value="VISA">VISA</option>
            <option value="DISCOVER">DISCOVER </option>
            <option value="CHECK">CHECK </option>
            <option value="CASH">CASH</option>    
    </SELECT>
    <br />
    <br />
    
   
    <input type = "submit" name = "Submit" value = "Apply Payment" />
    <input type = "reset" value = "Reset" /><br />
    </fieldset>
        
    <input type="hidden" name="invoiceNum" value="<%= Integer.parseInt(request.getParameter("invoiceNum")) %>">
    <input type="hidden" name="location" value="<%= Invoice.getLocation()%>">
    <input type="hidden" name="emp_Id" value="<%= Invoice.getEmp_id()%>">
    <input type="hidden" name="cus_id" value="<%= Invoice.getCus_id()%>">
    <input type="hidden" name="vin" value="<%= Invoice.getVin()%>">
    <input type="hidden" name="total" value="<%= Invoice.getTotal()%>">
    <input type="hidden" name="payment" value="<%= UpdateInvoice.getPayment()%>">
    <input type="hidden" name="Payment_Date" value="<%= new Timestamp(date.getTime()) %>">
    <input type="hidden" name="Payment_Type" value="<%= request.getParameter("drop") %>">
    <input type="hidden" name="balance" value="<%= Invoice.getBalance()%>">
    <input type="hidden" name="status" value="<%= Invoice.getStatus()%>"> 
        

    
</form>
                                            
   
    </body>
</html>
