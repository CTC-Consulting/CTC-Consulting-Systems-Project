<%-- 
    Document   : InvoiceSearch
    Created on : Mar 19, 2012, 7:40:43 PM
    Author     : Joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<form method = "post" action = "Invoice.jsp">
    Enter Invoice Number<br />
    <input type = "text" name = "invoiceNum" /><br />
    <input type = "submit" name = "Submit" value = "Invoice Search" />
    <input type = "reset" value = "Reset" /><br />
</form>
    </body>
</html>
