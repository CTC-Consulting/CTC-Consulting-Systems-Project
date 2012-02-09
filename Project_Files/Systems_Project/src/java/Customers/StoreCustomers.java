/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Customers;

/**
 *
 * @author Xia
 */
import java.sql.*;
import Customers.Customers;

public class StoreCustomers {
    
    private PreparedStatement pstmt;
    
    public StoreCustomers() {
        initializeJdbc();
    }
    
    public void initializeJdbc () {
        
        try {
        //Load the jdbc driver
	Class.forName("com.mysql.jdbc.Driver");
	//Establish a connection
	Connection connection = DriverManager.getConnection
		("jdbc:mysql://localhost/javabook", "scott", "tiger");
	//Create a statement
        pstmt = connection.prepareStatement("insert into Customers " +
                "(cus_id, firstName, lastName, street, city, state, zip, dayPhone,nightPhone, moble) "
                + " values (?, ?, ?, ?, ?, ?, ?,?,?,?)");
         }
        catch(Exception ex) {
            System.out.println(ex);
        }
    }
    
    /**Store Customers into the database */
    public void storeCustomers(Customers customers) throws SQLException {
        pstmt.setString(1, customers.getCus_id());
        pstmt.setString(2, customers.getFirstName());
        pstmt.setString(3, customers.getLastName());
        pstmt.setString(4, customers.getStreet());
        pstmt.setString(5, customers.getCity());
        pstmt.setString(6, customers.getState());
        pstmt.setString(7, customers.getZip());
        pstmt.setString(8, customers.getDayPhone());
        pstmt.setString(9, customers.getNightPhone());
        pstmt.setString(10, customers.getMoble());
        pstmt.executeUpdate();
    }
    
    
}
