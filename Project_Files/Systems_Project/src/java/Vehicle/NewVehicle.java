/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Vehicle;

/**
 *
 * @author Xia
 */

import java.sql.*;
import EmployeeLogin.Login;
import Customers.NewCustomers;

public class NewVehicle {
    
    private String vin;
    private String vin1;
    private String make;
    private String model;
    private String myear;
    private String exterior;
    private String interior;
    private String userId;
    private String password;
    public int cus_id;
    private int cus_id1;

    
    public NewVehicle() {
    
    }
    
    //check user name and password
    public boolean checkValid() throws SQLException, ClassNotFoundException {
        boolean test = false;        
        Statement dbInitializer = Login.dbInitializer();
        ResultSet resultSet = dbInitializer.executeQuery("select * from Login where userId = '" + getUserId() + "' and password ='" + getPassword() +
                   "'");
        while (resultSet.next()) {
            test = true;
        }
        return test;
    }
    //check vehicle information
     public boolean checkInfo() throws SQLException, ClassNotFoundException {
        boolean test = false;        
        Statement dbInitializer = Login.dbInitializer();
        ResultSet resultSet = dbInitializer.executeQuery("select * from Vehicle where vin = '" + getVin1() + 
                "'OR cus_id = '" + getCus_id() + "'");
        while (resultSet.next()) {
            test = true;
        }
        return test;
    }
     
    //create a new vehicle record
    public void doCreate() throws SQLException, ClassNotFoundException {
      
        Statement stmt = Login.dbInitializer();
        stmt.executeUpdate("insert into Vehicle(vin, cus_id, make, model, myear, exterior, interior)values ('" + getVin()  + "', '" + getCus_id() + "', '" + getMake() + "', '" 
                + getModel() + "', '" + getMyear() + "', '" + getExterior() + "', '" + getInterior() + "');") ; 
        System.out.println("This is the customer Id in new vehicle: " + getCus_id());
        
    }
     //check vehicle information
     public boolean checkVinOnly() throws SQLException, ClassNotFoundException {
        boolean test = false;        
        Statement dbInitializer = Login.dbInitializer();
        ResultSet resultSet = dbInitializer.executeQuery("select * from Vehicle where vin = '" + getVin1() + 
               "'");
        while (resultSet.next()) {
            test = true;
        }
        return test;
    }
    //get the vehicle information
     public boolean getInfo() throws SQLException, ClassNotFoundException {
         boolean test = false;
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from Vehicle where vin = '" 
                + getVin1() + "';" );
      
        while (rs.next()) {
            test=true;
    //     setCus_id(rs.getInt("cus_id"));
         setVin(rs.getString("vin")); 
         setMake(rs.getString("make")); 
         setModel(rs.getString("model")); 
         setMyear(rs.getString("myear")); 
         setExterior(rs.getString("exterior")); 
         setInterior(rs.getString("interior")); 
        }
   
        return test;
    }

    /**
     * @return the vin
     */
    public String getVin() {
        return vin;
    }

    /**
     * @param vin the vin to set
     */
    public void setVin(String vin) {
        this.vin = vin;
    }
    
    /**
     * @return the vin
     */
    public String getVin1() {
        return vin1;
    }

    /**
     * @param vin the vin to set
     */
    public void setVin1(String vin1) {
        this.vin1 = vin1;
    }

    /**
     * @return the make
     */
    public String getMake() {
        return make;
    }

    /**
     * @param make the make to set
     */
    public void setMake(String make) {
        this.make = make;
    }

    /**
     * @return the model
     */
    public String getModel() {
        return model;
    }

    /**
     * @param model the model to set
     */
    public void setModel(String model) {
        this.model = model;
    }

    /**
     * @return the myyear
     */
    public String getMyear() {
        return myear;
    }

    /**
     * @param myyear the myyear to set
     */
    public void setMyear(String myear) {
        this.myear = myear;
    }

    /**
     * @return the exterior
     */
    public String getExterior() {
        return exterior;
    }

    /**
     * @param exterior the exterior to set
     */
    public void setExterior(String exterior) {
        this.exterior = exterior;
    }

    /**
     * @return the interior
     */
    public String getInterior() {
        return interior;
    }

    /**
     * @param interior the interior to set
     */
    public void setInterior(String interior) {
        this.interior = interior;
    }

    /**
     * @return the userId
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    
    /**
     * @return the cus_id1
     */
    public int getCus_id1() {
        return cus_id1;
    }

    /**
     * @param cus_id1 the cus_id1 to set
     */
    public void setCus_id1(int cus_id1) {
        this.cus_id1 = cus_id1;
    }

    /**
     * @return the cus_id
     */
    public int getCus_id() {
        return cus_id;
    }

    /**
     * @param cus_id the cus_id to set
     */
    public void setCus_id(int cus_id) {
        this.cus_id = cus_id;
    }

   
}
