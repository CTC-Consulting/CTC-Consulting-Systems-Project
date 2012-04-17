<%-- 
    Document   : CustomersUpdatecheck
    Created on : Feb 14, 2012, 9:16:52 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@page import = "Customers.CustomerUpdate" %>
<%@page import = "Customers.CustomerSearch" %>

<jsp:useBean id = "CustomerUpdate" class = "Customers.CustomerUpdate" scope = "session">
</jsp:useBean>
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch" scope = "session">
</jsp:useBean>
<jsp:setProperty name = "CustomerUpdate" property = "*" />
<jsp:setProperty name = "CustomerSearch" property = "*" />

<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
       <title> Motor City Repairs - Customer Update Check </title>
    </head>
    <body>
    <div id="main">
      <div id="header1">
               <br />
            <b> Motor City Repairs - Confirm Update Customer </b>
       </div>
       <div id="indexCenter">
            <br />
            <br />
            <br />
               
      <% if( (CustomerSearch.getFirstName1() == null)
           &&(CustomerSearch.getLastName1() == null)&& (CustomerSearch.getStreet1() == null)
           &&(CustomerSearch.getCity1() == null) &&(CustomerSearch.getZip1() == null)
           &&(CustomerSearch.getState1() == null)&&(CustomerSearch.getDayPhone1() == null) )
                   { %>
          <%out.print(" The * fields are Required. "+
                  " Please click your browser's 'BACK' button and try again!"); %>
          
          <% } else { %>
          
          <% CustomerUpdate.doUpdate(); %>
          
          <%  out.print(CustomerSearch.getFirstName1() + " " +
                CustomerSearch.getLastName1() + " " +
                " is now updated in the Motor City customer database!");
         %>
             
         <% } %>
                 
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>

