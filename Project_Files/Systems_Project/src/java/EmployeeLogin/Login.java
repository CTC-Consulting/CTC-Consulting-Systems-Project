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

public class Login {
    private String userId;
    private String password;
    private String admin;
    private String firstName;
    private String lastName;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String dayPhone;
    private String nightPhone;
    private String moble;
    
    
    public Login() {    
    } // end no-arg constructor
    
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

    public boolean testUsernameAndPassword() throws SQLException, ClassNotFoundException {

         boolean test = false;
         System.out.print("I STARTED");
         System.out.print(userId);
         
           Statement statement = dbInitializer();
           ResultSet tester = statement.executeQuery("select * from login where userId = '" +
                   getUserId() + "' and password ='" + getPassword() +
                   "'");
           int lala = 0;
           while (tester.next()) {
                  System.out.print("I GOT HERE");
                  lala++;
                  
           }
           if (lala != 0) {
                    test = true;
           }
           return test;

    } // end testerUsernameandPassword

    public boolean checkAccess() throws SQLException, ClassNotFoundException {
        boolean userAccess = false;
        String test = "N";
        Statement statement = dbInitializer();

        ResultSet tester = statement.executeQuery("select * from login where userId = '" +
                   getUserId() + "' and password ='" + getPassword() +
                   "'");
        
        while (tester.next()) {
            test = tester.getString("admin");            
        }
        
        if (test.equalsIgnoreCase("Y")) {
            userAccess = true;
        }
        
       return userAccess;
    } // end updateUser method 
    
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
     * @return the admin
     */
    public String getAdmin() {
        return admin;
    }

    /**
     * @param admin the admin to set
     */
    public void setAdmin(String admin) {
        this.admin = admin;
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
     * @return the dayPhone
     */
    public String getDayPhone() {
        return dayPhone;
    }

    /**
     * @param dayPhone the dayPhone to set
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
