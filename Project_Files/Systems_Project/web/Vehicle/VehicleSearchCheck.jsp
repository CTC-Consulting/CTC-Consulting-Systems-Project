<%-- 
    Document   : VehicleSearchCheck
    Created on : Feb 21, 2012, 8:57:19 PM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
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
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Vehicle Search Check</title>
    </head>
    <body>
        <div id="main">
        <div id="header1">
            <br>
            <b> Motor City Repairs - Vehicle Search </b>
        </div>
       <div id="indexCenter">
           <br>
           <br>
           <br>
        <%--check the null value for the vehicle --%>
         <% if(NewVehicle.getVin1() == null) { %>
         <% out.print("Please click your browser's 'BACK' button"+
                 " and select or enter the vehicle number for the customer!"); %>
         <% } else {
             NewVehicle.checkVinOnly();
                         } %>
         
        <%--check the false information --%>
         <% if(NewVehicle.checkVinOnly() == false) { %>
         <% out.print("The vehicle number you have entered " + NewVehicle.getVin1() + " is not in our database, "
                + "please go back to try again or create a new vehicle information for the customer!"); %>
        <br><br><br>
        <%--button for create a new vehicle --%>
         <form method="post" action="vehicle.jsp">
         <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
         <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
         <input class="userButtom" type="submit" value="Create a new vehicle"> 
         </form> 
        <% } else {%>  
        <%--get the matching vehicle information --%>
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
      <p><input type = "submit" name = "Submit" value = "Start work order"></p>
        </form>
        <% } %>
   
       
      </div>  
        <div id="footer">
            <br/><h4>&copy;2012 Motor City Repairs </h4>
        </div>
     </div>    
   </body>
</html>
