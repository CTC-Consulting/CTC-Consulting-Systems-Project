<%-- 
    Document   : vehicle
    Created on : Feb 9, 2012, 1:34:48 PM
    Author     : jstone18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "javaBeans.VehicleBean" %>
<jsp:useBean id="vehicle" scope="session"
             class="javaBeans.VehicleBean" />
<jsp:setProperty name="vehicle" property="*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle JSP Page</title>
    </head>
    <body>
        <div align="center"><h1>Vehicle Information</h1></div>
        <div align="center">
        <table border="0" cellspacing="5" cellpadding="5">
           <tbody>
                <tr>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td><h3> Customer ID Number </h3></td>
                    <td><input type =" text" name ="myear" required /></td>
                </tr>
                <tr>
                    <td><h3>  Vehicle ID Number </h3></td>
                    <td colspan="2"><input type =" text" name ="vin" required /></td>
                    <td> </td>
                    <td><h3>  Mileage </h3> </td>
                    <td><input type =" text" name ="myear" required /></td>
                </tr>
                <tr>
                    <td><h3> License Plate Number </h3></td>
                    <td><input type =" text" name ="myear" required /></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><h3> Year </h3></td>
                    <td><input type =" text" name ="myear" required /></td>
                    <td><h3> Make </h3></td>
                    <td> <input type =" text" name ="make" required /></td>
                    <td><h3> Model </h3> </td>
                    <td><input type =" text" name ="model " required /> </td>
                </tr>
                <tr>
                    <td><h3> Engine </h3></td>
                    <td colspan="2"><input type =" text" name ="myear" required /></td>
                    <td><h3> Transmission </h3></td>
                    <td colspan="2"><input type =" text" name ="myear" required /> </td>
                </tr>
                <tr>
                    <td><h3> Exterior </h3></td>
                    <td colspan="2"><input type =" text" name =" exterior" required /></td>
                    <td><h3> Interior </h3> </td>
                    <td colspan="2"><input type =" text" name ="interior" required /></td>
                </tr>
            </tbody>
        </table>
</div>
    </body>
</html>

