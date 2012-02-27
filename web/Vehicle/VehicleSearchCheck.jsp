<%-- 
    Document   : VehicleSearchCheck
    Created on : Feb 21, 2012, 8:57:19 PM
    Author     : Xia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Vehicle.NewVehicle" %>
<jsp:useBean id = "NewVehicle" 
      class = "Vehicle.NewVehicle" scope = "session"></jsp:useBean>
<jsp:setProperty name = "NewVehicle" property = "*" />
<%@ page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>
<%@ page import = "Customers.CustomerSearch" %>
<jsp:useBean id = "CustomerSearch" class = "Customers.CustomerSearch"
scope = "session" ></jsp:useBean>
<jsp:setProperty name="CustomerSearch" property="*" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle Search Check</title>
    </head>
    <body>
         <% if(NewVehicle.getVin1() == null) { %>
         <% out.print("Please enter the vehicle number!"); %>
         <% } else {%> 
        
         <% if(NewVehicle.checkInfo() == false) { %>
         <% out.print("The vehicle number you have entered " + NewVehicle.getVin1() + " is not in our database, "
                + "please go back to try again or create a new vehicle information for the customer!"); %>
        <br><br><br>
         <form method="post" action="Vehicle.jsp">
         <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
         <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
         <input class="userButtom" type="submit" value="Create a new vehicle"> 
         </form> 
        <% } else {%>   
     <%--    <% CustomerSearch.getInfo(); %>
        <form name ="form1" method = "get" action="../Order/WorkOrder.jsp" >
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
         <br><br>  --%>
          <% NewVehicle.getInfo();   %>
        <form name ="form1" method = "get" action="../Order/WorkOrder.jsp" >
         <h3> Customer vehicle information: </h3>
     <p> <label> * Vehicle number:</label>
         <input type = "text" name = "vin" value ="<%=NewVehicle.getVin()%>"> </p>
     <p> <label> * Make: </label>
         <input type = "text" name = "make" value ="<%=NewVehicle.getMake()%>" > </p>
     <p> <label> * Model: </label>
         <input type = "text" name = "model" value ="<%=NewVehicle.getModel()%>" >  </p>
      <p><label> * Year: </label>
         <input type = "text" name = "myear"  value ="<%=NewVehicle.getMyear()%>" >  </p>
      <p><label> * Exterior: </label>
         <input type = "text" name = "exterior" value ="<%=NewVehicle.getExterior()%>" > </p>
      <p><label> * Interior: </label>
         <input type = "text" name = "interior"  value ="<%=NewVehicle.getInterior()%>" > </p>
         
      <p> <input type = "submit" name = "Submit" value = "Start work order">
          <input type = "reset" value = "Reset"></p>
        </form>
       
        <% } %>
        <% } %>
    </body>
</html>
