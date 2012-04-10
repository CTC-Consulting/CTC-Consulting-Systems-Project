<%-- 
    Document   : Invoice
    Created on : Jan 31, 2012, 4:08:49 PM
    Author     : Joe Watson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import = "java.sql.*;" %>
<%@page import = "java.text.*;" %>
<%@page import = "Location.NewLocation" %>
<%@page import = "InvoicePk.LineItem" %>
<%@page import = "EmployeeLogin.Login" %>
<%@page import = "Order.WorkOrder" %>
<%@page import = "InvoicePk.InvoiceCheck" %>



<jsp:useBean id = "NewLocation" 
      class = "Location.NewLocation" scope = "session">
</jsp:useBean>

<jsp:useBean id = "Invoice" 
      class = "InvoicePk.Invoice" scope = "session">
</jsp:useBean>

<jsp:useBean id = "WorkOrder" 
      class = "Order.WorkOrder" scope = "session">
</jsp:useBean>

<jsp:useBean id = "LineItem" 
      class = "InvoicePk.LineItem" scope = "session">
</jsp:useBean>

<jsp:useBean id = "InvoiceCheck" 
      class = "InvoicePk.InvoiceCheck" scope = "session">
</jsp:useBean>


<jsp:setProperty name = "Invoice" property = "*" />
<jsp:setProperty name = "NewLocation" property = "*"  />
<jsp:setProperty name = "WorkOrder" property = "*" />
<jsp:setProperty name = "LineItem" property = "*" /> 
<jsp:setProperty name = "InvoiceCheck" property = "*" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
    </head>
    <body>
        <% int gTotal = 0; %>
      <%--  <% DecimalFormat df = new DecimalFormat("#,###.##"); %> --%>
      <% NumberFormat df = NumberFormat.getCurrencyInstance();   %>

     <%
      if (InvoiceCheck.intCheck(request.getParameter("invoiceNum")) == false) {
          out.print("Please click your browser's 'BACK' button and enter a numeric value for Invoice Number.");
                          }
             
               else {
                 
                  
        Statement statement = Invoice.dbInitializer();
        try {
        ResultSet rs = statement.executeQuery("select * from lineitem left join "
                + "employees on lineitem.emp_id = employees.emp_id left join services on "
                + "lineitem.service_id = services.service_id where invoiceNum = " 
               +  Invoice.getInvoiceNum()  +  ";" );
        
        if (!(rs.next())) {
           out.print("The Invoice Number you entered does not exist. Please click your browser's 'BACK' button and retry."); 
                       }
               else 
                   
        rs.beforeFirst();          
        if (rs.next()) {
            
          %> 
          
        <%-- Location --%>
         <%Invoice.getInfo();%> 
        <h3><%= Invoice.getLocation()%></h3>
        
        <%--  Garage Address    --%>
    <pre>  
    <% Invoice.storeLocation();%>    
    <%= Invoice.getAddress()%>  
    Big City, GA 30097  
    <%= Invoice.getPhone()%> 
    </pre>
<h5>It is not fixed until it's fixed </h5>            

   
  
 
        

<h1 style = "text-align: center; color: gray"> Invoice </h1>

        
   


    
<%--  Invoice number, customer ID and address    --%>
	<pre style = "text-align: right">
	Invoice Number: <%= Invoice.getInvoiceNum()%>
	Date: <%= Invoice.getTimeOut()%>
	</pre>

    <pre>TO:     <%= Invoice.getFirst_Name()%> <%= Invoice.getLast_Name()%>
        <%= Invoice.getStreet()%>
        <%= Invoice.getCity()%> <%= Invoice.getState()%> <%= Invoice.getZip()%>
    </pre>               
                  
	

  

   
 <%--  Result Table    --%>
<table border = "2" width = "1100">
    
<tr >
<th >DESCRIPTION</TH>
<th>TECHNICIAN</th>
<th>HOURS/QTY</TH>
<th>RATE/Price</th>
<th>AMOUNT</th>
</tr>

 
   
        <%
       rs.beforeFirst();
      while (rs.next()) {%>
      
       <%--  setLine_ID(rs.getString("line_ID")); 
         setDate(rs.getString("date")); 
         setInvoiceNum(rs.getString("invoiceNum")); 
         setService_ID(rs.getString("Service_Id")); --%>
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
       <% gTotal += Double.valueOf(rs.getString("line_Total")); %> 
    <%   } %>
    <%--Grand Total:--%>
    
    
      
        <tr> <td colspan = "4">Invoice Total:</td> <td>  <%out.print(df.format(gTotal));%>  </td></tr>  
      
   </table>    

         
<h5 style = "text-align: left">Make all checks payable to Motor City Repairs  </h5>
<h5 style = "text-align: left">Total due in 15 days. Overdue accounts subject to a service charge of 1% per month.  </h5>
<h4 style = "text-align: center">Thank you for your business</h4>         
       
     
       
<%                  }

           }                                     
               
                      catch (SQLException ex) {
                   ex.printStackTrace();
                   }  
  
           } 
           
%>  
                           
                                         


                                                     

      
 
    








    </body>
</html>
