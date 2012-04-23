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

import EmployeeLogin.Login;

public class NewCustomers {
    
    private String firstName;
    private String lastName;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String dayPhone;
    private String nightPhone;
    private String moble;
    private String userId;
    private String password;
    public int cus_id;
    private String vin;
    private String make;
    private String model;
    private String myear;
    private String exterior;
    private String interior;
    public int autoIncKeyFromFunc;
    
    
    
    public NewCustomers() {
    }
    
    public boolean checkValid() throws SQLException, ClassNotFoundException {
        boolean test = false;        
        Statement dbInitializer = Login.dbInitializer();
        ResultSet resultSet = dbInitializer.executeQuery("select * from login where userId = '" + getUserId() + "' and password ='" + getPassword() +
                   "'");
        while (resultSet.next()) {
            test = true;
        }
        return test;
    }
    
    public void doCreate() throws SQLException, ClassNotFoundException {
        ResultSet rs = null;
        try {
        Statement stmt = Login.dbInitializer();
        stmt.executeUpdate("insert into Customers(firstName, lastName, street, city, state, zip, dayPhone, nightPhone, moble)values ('" + getFirstName() + "', '" + getLastName() + "', '" + getStreet() + "', '"
                + getCity() + "', '" + getState() + "', '" + getZip() + "' , '" + getDayPhone() + "', '"
                + getNightPhone()+ "', '"  + getMoble() + "');") ; 
        
         rs = stmt.executeQuery("SELECT LAST_INSERT_ID()");
         if (rs.next()) {
            autoIncKeyFromFunc = rs.getInt(1);
            setCus_id(rs.getInt("cus_id"));
            setFirstName(rs.getString("firstName"));
            setLastName(rs.getString("lastName"));
            setStreet(rs.getString("street"));
            setCity(rs.getString("city"));
            setState(rs.getString("state"));
            setZip(rs.getString("zip"));
            setDayPhone(rs.getString("dayPhone"));
            setNightPhone(rs.getString("nightPhone"));
            setMoble(rs.getString("moble"));
            
         } else {
        // throw an exception from here
         }

        rs.close();
        System.out.println("This is the customer Id number: " + getCus_id());
         System.out.println("Key returned from " +
                       "'SELECT LAST_INSERT_ID()': " +
                       autoIncKeyFromFunc);
        }
          
        catch (SQLException ex) {
            System.out.println("*************************************************************");
                    ex.printStackTrace();
                } 
    }
    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the street
     */
    public String getStreet() {
        return street;
    }

    /**
     * @param street the street to set
     */
    public void setStreet(String street) {
        this.street = street;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * @return the zip
     */
    public String getZip() {
        return zip;
    }

    /**
     * @param zip the zip to set
     */
    public void setZip(String zip) {
        this.zip = zip;
    }

    /**
     * @return the DayPhone
     */
    public String getDayPhone() {
        return dayPhone;
    }

    /**
     * @param DayPhone the DayPhone to set
     */
    public void setDayPhone(String dayPhone) {
        this.dayPhone = dayPhone;
    }

    /**
     * @return the nightPhone
     */
    public String getNightPhone() {
        return nightPhone;
    }

    /**
     * @param nightPhone the nightPhone to set
     */
    public void setNightPhone(String nightPhone) {
        this.nightPhone = nightPhone;
    }

    /**
     * @return the moble
     */
    public String getMoble() {
        return moble;
    }

    /**
     * @param moble the moble to set
     */
    public void setMoble(String moble) {
        this.moble = moble;
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
     * @return the myear
     */
    public String getMyear() {
        return myear;
    }

    /**
     * @param myear the myear to set
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

}
