<%-- 
    Document   : Invoice
    Created on : Jan 31, 2012, 4:08:49 PM
    Author     : Joe Watson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import = "java.sql.*;" %>
<%@page import = "java.text.*;" %>
<%@page import = "EmployeeLogin.Login" %>



<jsp:useBean id = "Invoice" 
      class = "InvoicePk.Invoice" scope = "session">
</jsp:useBean>

<jsp:useBean id = "UpdateInvoice" 
      class = "InvoicePk.UpdateInvoice" scope = "session">
</jsp:useBean>

<jsp:useBean id = "WorkOrder" 
      class = "Order.WorkOrder" scope = "session">
</jsp:useBean>


<jsp:setProperty name = "Invoice" property = "*" />

<jsp:setProperty name = "UpdateInvoice" property = "*" />

<%@page import = "Order.WorkOrder" %>

<jsp:setProperty name = "WorkOrder" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statement</title>
    </head>
     <% UpdateInvoice.update(); %>
     <% UpdateInvoice.updateWorkOrder(); %>
     
    <body>
      <% double gTotal = 0; %>
      <% double cBalance = 0; %>
      <%--  <% DecimalFormat df = new DecimalFormat("#,###.##"); %> --%>
      <% NumberFormat df = NumberFormat.getCurrencyInstance();   %>
      
      <%-- Validate Invoicenum parameter and query for lineItem data if appropo --%>
     <%

                 
                  
        Statement statement = Invoice.dbInitializer();
        try {
        ResultSet rs = statement.executeQuery("select * from lineitem left join "
                + "employees on lineitem.emp_id = employees.emp_id left join services on "
                + "lineitem.service_id = services.service_id left join workorder on lineitem.invoicenum = "
                + "workorder.invoicenum where lineitem.invoiceNum = " 
                +  Invoice.getInvoiceNum()  +  ";" ); 
        
                    
        rs.beforeFirst();          
        if (rs.next()) {           
          %> 
          
          
          
        <%-- Location --%>
         <%Invoice.getInfo();%> 
        <h3><%= Invoice.getLocation()%></h3>
        
        <%--  Garage Address    --%>
    
    <% Invoice.storeLocation();%>  
    <% out.print("" +Invoice.getAddress() +"<br/>BigCity, GA 30099 <br/>"  + Invoice.getPhone()  ) ; %> 
    
<h5>It is not fixed until it's fixed </h5>                  

<h1 style = "text-align: center; color: gray"> Statement </h1>

    
<%--  Invoice number, date, customer ID and address    --%>
	<pre style = "text-align: right">
	
	Statement Date: <%= WorkOrder.now()%>
	</pre>
        
        
    <pre>TO:  <%Invoice.getInfo();%> 
        <%= Invoice.getFirst_Name()%> <%= Invoice.getLast_Name()%>
        <%= Invoice.getStreet()%>
        <%= Invoice.getCity()%> <%= Invoice.getState()%> <%= Invoice.getZip()%>
    </pre>               
                   

   
 <%--  Result Table uses while loop to get local result set  rs --%>
<table border = "2" width = "1100">
    
<tr>
<th>DESCRIPTION</th>
<th>TECHNICIAN</th>
<th>HOURS/QTY</th>
<th>RATE/Price</th>
<th>AMOUNT</th>
</tr>
    
        <%  
      rs.beforeFirst();
      while (rs.next()) {%>
      
                   
       <tr> <td> <% out.print(rs.getString("description")); %> </td>
         <%-- setPart(rs.getString("part")); 
         setParts_qty(rs.getString("parts_qty")); 
         
         setParts_Price(rs.getString("parts_Price")); 
         setParts_Total(rs.getString("parts_Total")); --%>
         
         <td>   <%out.print(rs.getString("lastname"));%> </td>
         <td>   <%out.print(rs.getString("hrs_qty"));%> </td>
         <td>   <%out.print(rs.getString("rate"));%> </td>
         <%-- setLabor_Total(rs.getString("labor_Total"));--%>
         <td>   <%out.print(rs.getString("line_Total"));%> </td>
       </tr>
       
       <%--Grand Total:--%>
       
       <% gTotal += Double.valueOf(rs.getString("line_Total")); %> 
            <% cBalance = Double.valueOf(Invoice.getBalance()); %>  
    <%   } %> 
        <tr> <td colspan = "4">Invoice Total:</td> <td>  <%out.print(df.format(gTotal));%>  </td></tr>
        <tr> <td colspan = "4"> Balance</td> <td><%=UpdateInvoice.getBalance()  %>  </td></tr>
      <%--  <tr> <td colspan = "4">Current Balance:</td> <td>  <%out.print(df.format(cBalance));%>  </td></tr>     --%>  
   </table>    
                                            <br />
                                            <br />

         
<h5 style = "text-align: left">Make all checks payable to Motor City Repairs  </h5>
<h5 style = "text-align: left">Total due in 15 days. Overdue accounts subject to a service charge of 1% per month.  </h5>
<h4 style = "text-align: center">Thank you for your business</h4>         
          
       
<%       }
   }                                     
               
                      catch (SQLException ex) {
                   ex.printStackTrace();
                   
           }  
    
           
%>  
                           
                                     

    </body>
</html>

