<%-- 
    Document   : Customers
    Created on : Feb 13, 2012, 1:09:22 AM
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
        <title> Motor City Repairs - New Customer  </title>
    </head>
    <body>
  <div id="main">
   <div id="header1">
               <br />
            <b> Motor City Repairs -  New Customer </b>
       </div>
        
  <div id="indexLeftColumn">
      <br />
     <h3>Please enter customer's information: </h3>
     <br />
     <h4 style = "color: red"> * Required fields !  </h4>
   </div>
   <div id="indexRightColumn1">  
       <%--get the new customer information --%>
    <form method = "get" action = "Customerscheck.jsp">
        <% NewCustomers.cus_id = NewCustomers.autoIncKeyFromFunc; %>
     <br />
     <table border="0" cellspacing="2" cellpadding="2">
          <br />
       <tbody>
     <tr>
        <td><h3> * First Name:</h3></td>
        <td ><input type = "text" name = "firstName" required /> </td>
        <td><h3> * Last Name: </h3></td>
        <td> <input type = "text" name = "lastName" required />  </td>
       </tr>
     <tr>
        <td><h3> * Street:  </h3></td>
        <td colspan="3"><input type = "text" name = "street" required/></td>
      </tr>
    <tr>
        <td><h3> * City:   </h3></td>
        <td><input type = "text" name = "city"  required/></td>
        <td><h3> * State:  </h3></td>
        <td><input type = "text" name = "state" required/></td>
      </tr>
   <tr>
       <td><h3> * Zip Code:   </h3></td>
       <td><input type = "text" name = "zip"  required/></td>
       <td></td>
       <td></td>
      </tr>
   <tr>
       <td><h3>* Daytime Phone: </h3></td>
       <td><input type = "text" name = "dayPhone" required /></td>
       <td><h3> Evening Phone: </h3> </td>
       <td><input type = "text" name = "nightPhone"  > </td>
      </tr>
   <tr>
       <td></td>
       <td></td>
       <td><h3> Cell Number:  </h3></td>
       <td><input type = "text" name = "moble"  ></td>
      </tr>
   <tr>
       <td>   </td>
       <td>   </td>
       <td>  </td>
       <td>  </td>
    </tr>
  <tr>
      <td></td>
      <td colspan="2"> <input type = "submit" name = "Submit" value = "Submit">
                       <input type = "reset" value = "Reset"> </td>
      <td></td>
    </tr>
   </tbody>
 </table>  
    </form>
     </div>
      <div id="footer">
         <br/><h4>&copy;2012 Motor City Repairs </h4>
      </div>
    </div>
  </body>
</html>
