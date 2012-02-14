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
    
    private String cus_id;
    private String firstName;
    private String lastName;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String DayPhone;
    private String nightPhone;
    private String moble;
    private String userId;
    private String password;
    
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
        Statement dbInitializer = Login.dbInitializer();
        dbInitializer.executeUpdate("insert into Customers values ('" + getCus_id() + "', '" + getFirstName() + "', '" + getLastName() + "', '" + getStreet() + "', '"
                + getCity() + "', '" + getState() + "', '" + getZip() + "', '" + getDayPhone() + "', '"
                + getNightPhone()+ "', '"  + getMoble() + "');") ; 
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
        return DayPhone;
    }

    /**
     * @param DayPhone the DayPhone to set
     */
    public void setDayPhone(String DayPhone) {
        this.DayPhone = DayPhone;
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

}
