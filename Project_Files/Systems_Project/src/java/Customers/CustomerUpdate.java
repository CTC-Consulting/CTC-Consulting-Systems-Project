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
import Customers.CustomerSearch;

public class CustomerUpdate {
    
    private String cus_id;
    private String firstName;
    private String lastName;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String dayPhone;
    private String nightPhone;
    private String moble;
   
    private String cus_id1;
    private String firstName1;
    private String lastName1;
    private String street1;
    private String city1;
    private String state1;
    private String zip1;
    private String dayPhone1;
    private String nightPhone1;
    private String moble1;
    
    private String UserId;
    private String password;
    
    public CustomerUpdate() {        
    }
   
    
   
    public void doUpdate() throws SQLException, ClassNotFoundException {
        
     Statement dbInitializer = Login.dbInitializer();
     
     dbInitializer.executeUpdate("UPDATE Customers SET firstName = '" + getFirstName1() 
             + "' where cus_id = '" + getCus_id1() + "';");
     
     
    dbInitializer.executeUpdate("UPDATE Customers SET lastName = '" + getLastName1()
                 + "' where cus_id = '" + getCus_id1() + "';");
     
    
    dbInitializer.executeUpdate("update Customers set street = '" + getStreet1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
    
    dbInitializer.executeUpdate("update Customers set state = '" + getState1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
    
     dbInitializer.executeUpdate("update Customers set city = '" + getCity1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
     
     dbInitializer.executeUpdate("update Customers set zip = '" + getZip1() 
                 + "'where cus_id = '" + getCus_id1() + "';");
   
     dbInitializer.executeUpdate("update Customers set dayPhone = '" + getDayPhone1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
     
     dbInitializer.executeUpdate("update Customers set nightPhone = '" + getNightPhone1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
     
     dbInitializer.executeUpdate("update Customers set moble = '" + getMoble1() 
                 + "' where cus_id = '" + getCus_id1() + "';");
    
 
     
    }

   
    /**
     * @return the UserId
     */
    public String getUserId() {
        return UserId;
    }

    /**
     * @param UserId the UserId to set
     */
    public void setUserId(String UserId) {
        this.UserId = UserId;
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
    public String getCus_id1() {
        return cus_id1;
    }

    /**
     * @param cus_id1 the cus_id1 to set
     */
    public void setCus_id1(String cus_id1) {
        this.cus_id1 = cus_id1;
    }

    /**
     * @return the firstName1
     */
    public String getFirstName1() {
        return firstName1;
    }

    /**
     * @param firstName1 the firstName1 to set
     */
    public void setFirstName1(String firstName1) {
        this.firstName1 = firstName1;
    }

    /**
     * @return the lastName1
     */
    public String getLastName1() {
        return lastName1;
    }

    /**
     * @param lastName1 the lastName1 to set
     */
    public void setLastName1(String lastName1) {
        this.lastName1 = lastName1;
    }

    /**
     * @return the street1
     */
    public String getStreet1() {
        return street1;
    }

    /**
     * @param street1 the street1 to set
     */
    public void setStreet1(String street1) {
        this.street1 = street1;
    }

    /**
     * @return the city1
     */
    public String getCity1() {
        return city1;
    }

    /**
     * @param city1 the city1 to set
     */
    public void setCity1(String city1) {
        this.city1 = city1;
    }

    /**
     * @return the state1
     */
    public String getState1() {
        return state1;
    }

    /**
     * @param state1 the state1 to set
     */
    public void setState1(String state1) {
        this.state1 = state1;
    }

    /**
     * @return the zip1
     */
    public String getZip1() {
        return zip1;
    }

    /**
     * @param zip1 the zip1 to set
     */
    public void setZip1(String zip1) {
        this.zip1 = zip1;
    }

    /**
     * @return the DayPhone1
     */
    public String getDayPhone1() {
        return dayPhone1;
    }

    /**
     * @param DayPhone1 the DayPhone1 to set
     */
    public void setDayPhone1(String dayPhone1) {
        this.dayPhone1 = dayPhone1;
    }

    /**
     * @return the nightPhone1
     */
    public String getNightPhone1() {
        return nightPhone1;
    }

    /**
     * @param nightPhone1 the nightPhone1 to set
     */
    public void setNightPhone1(String nightPhone1) {
        this.nightPhone1 = nightPhone1;
    }

    /**
     * @return the moble1
     */
    public String getMoble1() {
        return moble1;
    }

    /**
     * @param moble1 the moble1 to set
     */
    public void setMoble1(String moble1) {
        this.moble1 = moble1;
    }

    /**
     * @return the cus_id
     */
    public String getCus_id() {
        return cus_id;
    }

    /**
     * @param cus_id the cus_id to set
     */
    public void setCus_id(String cus_id) {
        this.cus_id = cus_id;
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

}