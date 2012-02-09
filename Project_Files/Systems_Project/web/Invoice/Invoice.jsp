<%-- 
    Document   : Invoice
    Created on : Jan 31, 2012, 4:08:49 PM
    Author     : Joe Watson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
    </head>
    <body>
        <H3>Motor City Repair North</H3>
<h5>It is not fixed until it's fixed
</h5>
<h3 style = "text-align: right; color: gray">
Invoice
</h3>
	<pre>
	1222 Maple St.
	Big City, GA 30097
	Phone 777 555-6570   
	Fax 777 555-6571
	</pre>

	<pre style = "text-align: right">
	Invoice Number
	Date: <!-- To be changed later to retain date of invoice  -->
        <%=new java.util.Date() %>
	</pre>

	<pre>TO:  jspEL
	</pre>

	<pre style = "text-align: center">
	For:   
	</pre>
<table border = "2"; width = "1100">
<tr >
<th >DESCRIPTION</TH>
<th>TECHNICIAN</th>
<th>HOURS/QTY</TH>
<th>RATE/Price</th>
<th>AMOUNT</th>
</tr>

<!-- To be changed later to a while loop with resultSet.hasNext()  -->

<% for (int i = 0; i<10; i++) { %>
<tr>
    <td>DescriptionData</td>
    <td>TechnicianData</td>
    <td>Hrs/QtyData</td>
    <td>RateData</td>
    <td>AmountData</td>
</tr>
<% } %>
</table>


<h5 style = "text-align: left">Make all checks payable to Motor City Repairs  </h5>
<h5 style = "text-align: left">Total due in 15 days. Overdue accounts subject to a service charge of 1% per month.  </h5>
<h4 style = "text-align: center">Thank you for your business</h4>
    </body>
</html>
