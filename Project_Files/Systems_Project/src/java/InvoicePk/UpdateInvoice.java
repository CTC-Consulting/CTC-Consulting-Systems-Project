/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InvoicePk;

/**
 *
 * @author Joe
 */

import Order.WorkOrder;
import InvoicePk.Invoice;
import InvoicePk.LineItem;
import java.sql.*;
import java.sql.Timestamp;
import java.util.Date;


public class UpdateInvoice {
    
    private String invoiceNum;
    private String location;
    private String emp_Id;
    private String cus_Id;
    private String vin;
    private String total;
    private String payment;
    private String Payment_Date;
    private String Payment_Type;
    private String balance;
    private String status;
    
    
    java.util.Date date= new java.util.Date();
    
    
        // No arg constructor
    public void UpdateInvoice() {
    }
    
    
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
        
        
         public void update() throws SQLException, ClassNotFoundException{
            
 
        
       // Deduct payment from balance
        Double newBalance = (Double.valueOf(getBalance()) - Double.valueOf(getPayment()));
        balance = String.valueOf(newBalance);
      // setBalance(balance);
        
        //Set status to closed if balance = 0
        if (Double.valueOf(balance) == 0.00) {
            status = "Closed";
            
        }
        
        //Timestamp payment date/time and set  Payment_Type
        Payment_Date = String.valueOf(new Timestamp(date.getTime()));
      
        
       
        
        
                try {    
        Statement dbInitializer = UpdateInvoice.dbInitializer() ;
        dbInitializer.executeUpdate("insert into Payment values ('" + getInvoiceNum() + "', '" + getLocation() + "', '" + getEmp_Id() + "', '" + getCus_Id() + "', '" + getVin() + "', '"
        + getTotal()+ "', '"  + getPayment() + "', '" + getPayment_Date() + "', '" + "', '" + getPayment_Type() + "', '" + getBalance() + "', '" + getStatus() + "');") ; 
                
                }
        
                catch (SQLException ex) {
                   ex.printStackTrace();
                   }
                  }

        //Update balance and status subsequent to payment
        public void updateWorkOrder() throws SQLException, ClassNotFoundException{
            
        try {    
        Statement dbInitializer = UpdateInvoice.dbInitializer() ;
        dbInitializer.executeUpdate("update WorkOrder set balance = " + getBalance() + " and status = "+  getStatus() + "');");
        }
                
        catch (SQLException ex) {
                   ex.printStackTrace();
            }
        }  

       //getters and setters                         
                        
    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getCus_Id() {
        return cus_Id;
    }

    public void setCus_Id(String cus_Id) {
        this.cus_Id = cus_Id;
    }

    public String getEmp_Id() {
        return emp_Id;
    }

    public void setEmp_Id(String emp_Id) {
        this.emp_Id = emp_Id;
    }

    public String getInvoiceNum() {
        return invoiceNum;
    }

    public void setInvoiceNum(String invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPayment_Type() {
        return Payment_Type;
    }

    public void setPayment_Type(String Payment_Type) {
        this.Payment_Type = Payment_Type;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getPayment_Date() {
        return Payment_Date;
    }

    public void setPayment_Date(String Payment_Date) {
        this.Payment_Date = Payment_Date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
        
}
