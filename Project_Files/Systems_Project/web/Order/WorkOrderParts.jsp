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
        <title>Add Parts</title>
    </head>
    <body>
        <form method = "get" action="WorkOrderCheck.jsp" >
            <input type="hidden" name="service_id"
                   value="<% request.getParameterValues("service_id"); %>">
            
            <input type="submit" name ="Submit" value="Submit" >
        </form>
    </body>
</html>
