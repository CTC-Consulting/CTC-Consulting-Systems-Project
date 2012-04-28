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
import Vehicle.NewVehicle;

public class CustomerSearch {
    
    public int cus_id;
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
    
    private int cus_id1;
    private String firstName1;
    private String lastName1;
    private String street1;
    private String city1;
    private String state1;
    private String zip1;
    private String dayPhone1;
    private String nightPhone1;
    private String moble1;
    
    public String vid;
    private String vin;
    private String make;
    private String model;
    private String myear;
    private String exterior;
    private String interior;
    
     public CustomerSearch() {        
      }
     //Check matching customer information
      public boolean checkInfo() throws SQLException, ClassNotFoundException {

         boolean test = false;
         System.out.print("I STARTED");
         System.out.print(userId);
         
         Statement statement = Login.dbInitializer();
         ResultSet tester = statement.executeQuery("select * from Customers where firstname = '" +
                   getFirstName1() + "' and lastname ='" + getLastName1() +
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

      //get the customer information
    public void getInfo() throws SQLException, ClassNotFoundException {
      
       
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from Customers where firstName = '" 
                + getFirstName1() + " ' AND lastName = '" + getLastName1() +
                "' OR cus_id =  '" + getCus_id() +"';" );
        
        
        while (rs.next()) {
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
        }
   
        
    }
    //check the customer vehicle information
     public void checkVin() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        ResultSet rSet = dbInitializer.executeQuery("select * from vehicle where cus_id = '" 
                + getCus_id() +  "'");
        ResultSetMetaData rsmd = rSet.getMetaData();
        while (rSet.next()) {
            int vid = rSet.getInt("cus_id");
            int[] array = new int [10];
            for(int i =1; i <= rsmd.getColumnCount(); i ++)
            {
               array[i] = vid;
               setCus_id(rSet.getInt("cus_id")); 
               setVin(rSet.getString("vin")); 
            }
        }
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
     * @return the dayPhone1
     */
    public String getDayPhone1() {
        return dayPhone1;
    }

    /**
     * @param dayPhone1 the dayPhone1 to set
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