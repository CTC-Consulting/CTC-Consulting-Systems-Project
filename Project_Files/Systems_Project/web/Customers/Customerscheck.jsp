<%-- 
    Document   : Customerscheck
    Created on : Feb 13, 2012, 3:16:28 AM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "Customers.NewCustomers" %>

<jsp:useBean id = "NewCustomers" 
      class = "Customers.NewCustomers" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewCustomers" property = "*" />
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
      <title>Motor City Repairs - Confirm New Customer </title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Confirm Customer Registration </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
       <%--create a new customer --%>
       <% NewCustomers.doCreate();
          NewCustomers.cus_id = NewCustomers.autoIncKeyFromFunc; %>
       <h3><% out.print(NewCustomers.getFirstName() + " " +
                NewCustomers.getLastName() + " " + 
                " is now registered in the Motor City Customers database!"); %> </h3>
       
                <br />
                <br />
                <br />
           <form method="post" action="../Vehicle/vehicle.jsp">
           <input class="userButtom" type="submit" value="Register Vehicle"> 
           </form> 
            
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
