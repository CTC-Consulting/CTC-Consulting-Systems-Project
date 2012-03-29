/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InvoicePk;

/**
 *
 * @author Joe
 */

import java.sql.*;
import InvoicePk.Invoice;

public class LineItem {
    
    private String line_ID;
    private String date;
    private String invoiceNum;
    private String Service_ID;
    private String description;
    private String part;
    private String parts_qty;
    private String parts_Price;
    private String parts_Total;
    private String emp_id;
    private String hrs_qty;
    private String rate;
    private String labor_Total;
    private String line_Total;
    
    
    // No Arg Constructor 
    public LineItem() {
    
    }
    
    Invoice inv = new Invoice();
    
      public static Statement dbInitializer()throws SQLException, ClassNotFoundException{
	//Load the jdbc driver
	Class.forName("com.mysql.jdbc.Driver");
	//Establish a connection
	Connection connection = DriverManager.getConnection
		("jdbc:mysql://localhost/javabook", "scott", "tiger");
	//Create a statement
	Statement statement = connection.createStatement();
        return statement;
    } // end dbInitializer method 
        
    


 

//Getters and Setters
    public String getService_ID() {
        return Service_ID;
    }

    public void setService_ID(String Service_ID) {
        this.Service_ID = Service_ID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public String getHrs_qty() {
        return hrs_qty;
    }

    public void setHrs_qty(String hrs_qty) {
        this.hrs_qty = hrs_qty;
    }

    public  String getInvoiceNum() {
        return invoiceNum;
    }

    public void setInvoiceNum(String invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public String getLabor_Total() {
        return labor_Total;
    }

    public void setLabor_Total(String labor_Total) {
        this.labor_Total = labor_Total;
    }

    public String getLine_ID() {
        return line_ID;
    }

    public void setLine_ID(String line_ID) {
        this.line_ID = line_ID;
    }

    public String getLine_Total() {
        return line_Total;
    }

    public void setLine_Total(String line_Total) {
        this.line_Total = line_Total;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }

    public String getParts_Price() {
        return parts_Price;
    }

    public void setParts_Price(String parts_Price) {
        this.parts_Price = parts_Price;
    }

    public String getParts_Total() {
        return parts_Total;
    }

    public void setParts_Total(String parts_Total) {
        this.parts_Total = parts_Total;
    }

    public String getParts_qty() {
        return parts_qty;
    }

    public void setParts_qty(String parts_qty) {
        this.parts_qty = parts_qty;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }




}
