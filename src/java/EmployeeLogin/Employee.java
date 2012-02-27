/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package EmployeeLogin;


/**
 *
 * @author Xia
 */

import java.sql.*;

import EmployeeLogin.Login;

public class Employee {
    
    private String emp_id;
    private String location;
    private String firstName;
    private String lastName;
    private double rate;
    private String hiredate;
    private String userId;
    private String password;
   
    
    public Employee() {
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
        dbInitializer.executeUpdate("insert into Employees values ('" + getEmp_id() + "', '" + getLocation() + "', '" + getFirstName() + "', '" + getLastName() + "', '" + getRate() + "', '"
                + getHiredate() + "');") ; 
    }

    /**
     * @return the emp_id
     */
    public String getEmp_id() {
        return emp_id;
    }

    /**
     * @param emp_id the emp_id to set
     */
    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

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
     * @return the hiredate
     */
    public String getHiredate() {
        return hiredate;
    }

    /**
     * @param hiredate the hiredate to set
     */
    public void setHiredate(String hiredate) {
        this.hiredate = hiredate;
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
     * @return the rate
     */
    public Double getRate() {
        return rate;
    }

    /**
     * @param rate the rate to set
     */
    public void setRate(double rate) {
        this.rate = rate;
    }

    
}
