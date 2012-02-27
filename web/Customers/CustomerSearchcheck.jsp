<%-- 
    Document   : CustomerSearchcheck
    Created on : Feb 17, 2012, 1:13:29 PM
    Author     : Xia
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
<jsp:useBean id = "NewVehicleId" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicleId" property = "*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Check</title>
    </head>
    <body>
        
      <%-- if ( (CustomerSearch.getFirstName1() == null)&&(CustomerSearch.getLastName1() == null)) 
              { %>
        <% out.print("Please enter the customer information."); %>
        <% } else  %>
        
        <% if( ( (CustomerSearch.getFirstName1() == null)&&(CustomerSearch.getLastName1() != null))
              ||((CustomerSearch.getFirstName1() != null)&&(CustomerSearch.getLastName1() == null)) )
              { %>
        <% out.print("Both first name and last name are requried!"); %>
        <% } else {--%>
        
        <% if (CustomerSearch.checkInfo() == false) { %>
        
        <% out.print(" " + CustomerSearch.getLastName1() + " " + CustomerSearch.getFirstName1() + " is not in our database, please try again!"); %>
        <br><br><br>
         <form method="post" action="../Customers/Customers.jsp">
         <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
         <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
         <input class="userButtom" type="submit" value="Create a new customer"> 
         </form> 
        <% } else {%>   
        <% CustomerSearch.getInfo(); %>
         
        <form name ="form1" method = "get" action = "CustomersUpdatecheck.jsp">
         <h3>Customer information: </h3>
     <p> <label> * Customer ID:</label>
         <input type = "text" name = "cus_id1" value = "<%=CustomerSearch.getCus_id()%>" readonly /> </p> 
     <p> <label> * First Name:</label>
         <input type = "text" name = "firstName1" value = "<%=CustomerSearch.getFirstName()%>" > </p>
     <p> <label> * Last Name: </label>
         <input type = "text" name = "lastName1" value ="<%=CustomerSearch.getLastName()%>" > </p>
     <p> <label> * Street: </label>
         <input type = "text" name = "street1" value ="<%=CustomerSearch.getStreet()%>" >  </p>
      <p><label> * City: </label>
         <input type = "text" name = "city1"  value="<%=CustomerSearch.getCity()%>"> </p>
      <p><label> * State: </label>
         <input type = "text" name = "state1" value ="<%=CustomerSearch.getState()%>"> </p>
      <p><label> * Zip: </label>
         <input type = "text" name = "zip1"  value ="<%=CustomerSearch.getZip()%>" > </p>
     <p> <label> * Daytime Phone: </label>
         <input type = "text" name = "dayPhone1" value="<%=CustomerSearch.getDayPhone()%>"> </p>
     <p><label> Nighttime Phone: </label>
        <input type = "text" name = "nightPhone1" value="<%=CustomerSearch.getNightPhone()%>" > </p>
         <p> <label> Cell Number: </label>
         <input type = "text" name = "moble1" value ="<%=CustomerSearch.getMoble()%>">  </p>
         <p>
         <h3>please click the update button to update the customer information :</h3>
         <input type = "submit" name = "submit" value = "Update">
             <input type = "reset" value = "Reset">
         </form>
         
         <% CustomerSearch.checkVin(); %>
         <p><label>Please select one of the following vehicle number for the above customer:</label>
         <% out.print("" + CustomerSearch.getVin() );
             
             %>
          <form method = "get" action = "../Vehicle/VehicleSearchCheck.jsp">
          <p> <label> OR please enter the vehicle number to create a new work order: </label>
          <input type = "text" name = "vin1">  </p>
          <p> <input type = "submit" name = "submit" value = "Conform">
          <br /> <br />
          </form>
        
        <%   }  %>
        <%--  }  --%>
        
       
    </body>
</html>
