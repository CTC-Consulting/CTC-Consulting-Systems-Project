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
    private String emp_id;
    private String cus_id;
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
        
        
         public void calculate() throws SQLException, ClassNotFoundException{
            
 
        
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
      
         }
       
        
      public void update() throws SQLException, ClassNotFoundException{  
                try {    
        Statement dbInitializer = Invoice.dbInitializer() ;
        dbInitializer.executeUpdate("insert into Payment values ('" + getInvoiceNum() + "', '" + getLocation() + "', '" + getEmp_id() + "', '" + getCus_id() + "', '" + getVin() + "', '"
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
        dbInitializer.executeUpdate("update WorkOrder set balance = " + getBalance() + 
        ", status = "+  getStatus() +  "where invoiceNum = " + getInvoiceNum() + "');");
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

    public String getCus_id() {
        return cus_id;
    }

    public void setCus_id(String cus_id) {
        this.cus_id = cus_id;
    }

    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
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
