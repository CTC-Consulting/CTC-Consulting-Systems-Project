/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Location;

/**
 *
 * @author Xia
 */
import java.sql.*;
import EmployeeLogin.Login;
import InvoicePk.Invoice;
import Order.WorkOrder;

public class NewLocation {
    
    private String location;
    private String address;
    private String phone;
    private String manager;
    
    public NewLocation() {
        
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
    
  

    

    
    
        /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the manager
     */
    public String getManager() {
        return manager;
    }

    /**
     * @param manager the manager to set
     */
    public void setManager(String manager) {
        this.manager = manager;
    }
    
    
    
}

