<%-- 
    Document   : CustomerSearchcheck
    Created on : Feb 17, 2012, 1:13:29 PM
    Author     : Xia
    Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="CustomerSearch" property="*" />
<%@ page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Customer Search Check</title>
    </head>
   <body>
     <div id="main">
        <div id="header1">
            <br>
            <b> Motor City Repairs - Customer Search  </b>
        </div>
       <div id="indexCenterIL">
           <br>
           <br>
           <br>
        
        <% if (CustomerSearch.checkInfo() == false) { %>
        
        <% out.print(" " + CustomerSearch.getLastName1() + " " + CustomerSearch.getFirstName1() + " is not in our database, please try again!"); %>
        <br><br><br>
        
         <form method="post" action="../Customers/CustomerSearch.jsp">
         <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
         <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
         <input class="userButtom" type="submit" value="Search Again"> 
         </form> 
         <br/> <br/> <br/>
         <form method="post" action="../Customers/Customers.jsp">
         <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
         <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
         <input class="userButtom" type="submit" value="Create a new customer"> 
         </form> 
         
        
        <% } else {%>   
        <% CustomerSearch.cus_id = NewVehicle.getCus_id(); %>
        <% CustomerSearch.getInfo(); %>
         
        <form method = "get" action = "CustomerUpdatecheck.jsp">
     <p> <label> * First Name:</label>
         <input type = "text" name = "firstName" value = "<%=CustomerSearch.getFirstName()%>" > </p>
     <p> <label> * Last Name: </label>
         <input type = "text" name = "lastName" value ="<%=CustomerSearch.getLastName()%>" > </p>
     <p> <label> * Street: </label>
         <input type = "text" name = "street" value ="<%=CustomerSearch.getStreet()%>" >  </p>
      <p><label> * City: </label>
         <input type = "text" name = "city"  value="<%=CustomerSearch.getCity()%>"> </p>
      <p><label> * State: </label>
         <input type = "text" name = "state" value ="<%=CustomerSearch.getState()%>"> </p>
      <p><label> * Zip: </label>
         <input type = "text" name = "zip"  value ="<%=CustomerSearch.getZip()%>" > </p>
     <p> <label> * Daytime Phone: </label>
         <input type = "text" name = "dayPhone" value="<%=CustomerSearch.getDayPhone()%>"> </p>
     <p><label> Nighttime Phone: </label>
        <input type = "text" name = "nightPhone" value="<%=CustomerSearch.getNightPhone()%>" > </p>
         <p> <label> Cell Number: </label>
         <input type = "text" name = "moble" value ="<%=CustomerSearch.getMoble()%>">  </p>
         <p>
         <h3>Please click the update button to update the customer information :</h3>
         <input type = "submit" name = "submit" value = "Update Now">
         <input type = "reset" value = "Reset">
         </form>
         
          <% CustomerSearch.checkVin(); %>
          <form method = "get" action = "../Vehicle/VehicleSearchCheck.jsp">
         <p><label>Please select one of the following vehicle number for the above customer:</label>
             <input type="checkbox" name ="vin1" value="<%=CustomerSearch.getVin() %>">
              <%=CustomerSearch.getVin() %> 
              </br>
             <form method = "get" action = "../Vehicle/VehicleSearchCheck.jsp">
          <p> <label> OR please enter the vehicle number to create a new work order: </label>
              <input type = "text" name = "vin1">  
              <input type = "submit" name = "submit" value = "Submit to create a work order">
              <input type = "reset" value = "Reset"></p>
          
          <br /> <br />
          </form>
        
        <%   }  %>
       
        
       
     </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
