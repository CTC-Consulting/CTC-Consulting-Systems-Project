<%-- 
    Document   : WorkOrderParts
    Created on : Apr 12, 2012, 11:19:15 AM
    Author     : mshank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page import = "Order.WorkOrderParts" %>
<jsp:useBean id = "WorkOrderParts" 
      class = "Order.WorkOrderParts" scope = "session"></jsp:useBean>
<jsp:setProperty name = "WorkOrderParts" property = "*" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="../CSS/MCwebsite.css">
        <title> Motor City Repairs - Work Order Add Parts </title>
       
    </head>
    <body>
        <div id="main">
     <div id="header1">
            <br />
            <b> Motor City Repairs - Work Order - Add Parts </b>
       </div> 
        <div id="indexCenter">
             <br />
              <br />
        <form method = "get" action="WorkOrderCheck.jsp" >
            <input type="hidden" name="service_id"
                   value="<% request.getParameterValues("service_id"); %>">
            
            <input type="submit" name ="Submit" value="Submit" >
        </form>
   </div>
          <div id="footer">
             <br/><h4>&copy;2012 Motor City Repairs </h4>
          </div>
       </div>
    </body>
</html>
