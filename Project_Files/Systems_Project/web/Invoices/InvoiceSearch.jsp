<%-- 
    Document   : InvoiceSearch
    Created on : Mar 19, 2012, 7:40:43 PM
    Author     : Joe
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Invoice Search </title>
        </head>
    <body>
        <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs -  Invoice Search</b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
  <form method = "post" action = "Invoice.jsp">
      <h3> Enter Invoice Number </h3>
      <br />
    <input type = "text" name = "invoiceNum" /><br />
    <p>
    <input type = "submit" name = "Submit" value = "Invoice Search" />
    <input type = "reset" value = "Reset" /><br />
    </p>
    
 </form>
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
