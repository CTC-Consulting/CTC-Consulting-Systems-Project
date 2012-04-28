<%-- 
    Document   : logincheck
    Created on : Feb 13, 2012, 12:49:40 AM
    Author     : Xia
 Update to code: JStone added CSS code to jsp on  Apr 11, 2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "EmployeeLogin.Login" %>
<jsp:useBean id = "Login" class = "EmployeeLogin.Login"
scope = "session" ></jsp:useBean>
<jsp:setProperty name = "Login" property = "*"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title>Motor City Repairs - Login Check </title>
    </head>
    <body>
      <div id="main">
      <div id="header1">
         <br>
         <b> Welcome to the Motor City Repairs Application </b>
      </div> 
      <div id="indexCenter">
         <br>
         <br>
         <br>
        <%--check the null value for user id and password --%>
        <% if( ( (Login.getUserId() == null)&&(Login.getPassword() == null)) )
              { %>
        <% out.print("Please click your browser's 'BACK' button "
                + "and enter the user name and password!"); %>
        <% } else {%>
        <%--check incorrect information --%>
        <% if (Login.testUsernameAndPassword() == false) { %>
         <form id="form_1" method="post" action="logincheck.jsp">
            
          <p style= "text-align:center; font-weight:bold; color:red;">
                  Login Information Incorrect, please try again: </p>
           <div id="indexRightColumn1">                                
          <h3>Sign Into Your Account</h3>
          <p>    User ID: </p>
          <input type="text" name="userId" class="input" >
          <p>    Password: </p>
          <input type="text" name="password" class="input" >
          <p>  <input type="submit" name="Submit" value="Submit" >
          <input type = "reset" value = "Reset" ></p> 
          </form>
          </div>
          <% } else { %>
          <%-- check admin or employee --%>
                 <% if (Login.checkAccess() == false) { %>
                <div id="indexRightColumn1">    
                 <p style="text-align:center; font-weight:bold; font-size:20px; color:black;">
                     Welcome to Motor City Auto Repair!</p>
      
                <br>
                <br>
                <%--button for create a new customer --%>
                <form method="post" action="../Customers/Customers.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="New Customer"> 
                </form> 
                
                  <br>
                <br>
                <%--button for place an order --%>
                <form method="post" action="../Customers/CustomerSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Place An Order"> 
                </form> 
                
                <br>
                <br>
                <%-- button for check inventory --%>
                <form method="post" action="../Inventory/InventoryList.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Inventory List"> 
                </form> 
                
                <br>
                <br>
                <%--button for search invoice --%>
                <form method="post" action="../Invoices/InvoiceSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Search Invoice"> 
                </form> 
                  <% } else { %>
                  <%--admin page information --%>
                  <p style="text-align:center; font-weight:bold; font-size:20px; color:green;">Admin Control Panel</p>
                  <%--button for create a new employee --%>
                  <form id="Employee" method="post" action="Employee.jsp">
                  <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                  <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                  <input class="userButtom" type="submit" value="Create a new employee"> 
                  </form> 
                  
                    <br>
                <br>
                <%--button for create a new customer --%>
                <form method="post" action="../Customers/Customers.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="New Customer"> 
                </form> 
                
                  <br/>
                <br/>
                <%--button for place an order--%>
                <form method="post" action="../Customers/CustomerSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Place An Order"> 
                </form> 
                
                <br>
                <br>
                <%--button for check inventory --%>
                <form method="post" action="../Inventory/InventoryList.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Inventory List"> 
                </form> 
                
                <br>
                <br>
                <%--button for search invoice --%>
                <form method="post" action="../Invoices/InvoiceSearch.jsp">
                <input type="hidden" name="userId" value="<%= Login.getUserId() %>" >
                <input type="hidden" name="password" value="<%= Login.getPassword() %>" >
                <input class="userButtom" type="submit" value="Search Invoice"> 
                </form> 
                </div>
          <% } %>
          <% } %>
      <% } %>
     </div>  
         <div id="footer">
            <br><h4>&copy;2012 Motor City Repairs </h4>
         </div>
     </div>    
   </body>
</html>
