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
               
      <% if( (CustomerSearch.getFirstName() == null)
           &&(CustomerSearch.getLastName() == null)&& (CustomerSearch.getStreet() == null)
           &&(CustomerSearch.getCity() == null) &&(CustomerSearch.getZip() == null)
           &&(CustomerSearch.getState() == null)&&(CustomerSearch.getDayPhone() == null) )
                   { %>
          <%out.print(" The * fields are Required. "+
                  " Please click your browser's 'BACK' button and try again!"); %>
          
          <% } else { %>
          
          <% 
           CustomerUpdate.cus_id = CustomerSearch.getCus_id();
           CustomerUpdate.doUpdate(); %>
          
          <%  out.print(CustomerSearch.getFirstName() + " " +
                CustomerSearch.getLastName() + " " +
                " is now updated in the Motor City customer database!");  %>
          
           <% CustomerSearch.checkVin();%>
           <br />  <br />   <br />   <br /> 
         <form method = "get" action = "../Vehicle/VehicleSearchCheck.jsp">
         <p><label>Please select one of the following vehicle number for the above customer:</label>
             <input type="checkbox" name ="vin1" value="<%=CustomerSearch.getVin() %>">
              <%=CustomerSearch.getVin() %> 
              </br>
             <form method = "get" action = "../Vehicle/VehicleSearchCheck.jsp">
          <p> <label> OR please enter the vehicle number to create a new work order: </label>
              <input type = "text" name = "vin1">  
              <input type = "submit" name = "submit" value = "Submit">
              <input type = "reset" value = "Reset"></p>
          
          <br /> <br />
          </form>
        
       <% } %>
                 
    </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>

