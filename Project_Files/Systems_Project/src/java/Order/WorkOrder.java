/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Order;

/**
 *
 * @author Xia
 */

import EmployeeLogin.Login;
import java.sql.*;


public class WorkOrder {
    
    private String invoiceNum;
    private static String location;
    private String address;
    private String phone;
    private String manager;
    private String userId;
    private String password;
    private String serviceName;
    private int id;
    private int service_id;
    private double charge;
    private String detail;
    private String emp_id;
    private String firstName;
    private String lastName;
    private double rate;
    
    public WorkOrder () {     
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
    
     public void checkEmp() throws SQLException, ClassNotFoundException {
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from Employees where emp_id = '" 
                + getEmp_id() + "';" );
         while (rs.next()) {
         setEmp_id(rs.getString("emp_id")); 
         setFirstName(rs.getString("firstName")); 
         setLastName(rs.getString("lastName")); 
         setRate(rs.getDouble("rate")); 
        }
    }
     
     public void checkLocation() throws SQLException, ClassNotFoundException {
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from Locations where id = '" 
                + getId() + "';" );
         while (rs.next()) {
         setLocation(rs.getString("location")); 
         setAddress(rs.getString("address")); 
         setPhone(rs.getString("phone")); 
         setManager(rs.getString("manager")); 
        }
    }
     
          public  void checkLocationb() throws SQLException, ClassNotFoundException {
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from Locations where invoiceNum = '" 
                + getInvoiceNum() + "';" );
         while (rs.next()) {
         setLocation(rs.getString("location")); 
         setAddress(rs.getString("address")); 
         setPhone(rs.getString("phone")); 
         setManager(rs.getString("manager")); 
        }
    }

    public String getInvoiceNum() {
        return invoiceNum;
    }

    public void setInvoiceNum(String invoiceNum) {
        this.invoiceNum = invoiceNum;
    }
     
      public void checkServiceId() throws SQLException, ClassNotFoundException {
        Statement statement = Login.dbInitializer();
    //    int [] array = new int [11];
    //    for(int j = 0; j < 11; j++) {
   //      j = getService_id();
        ResultSet rs = statement.executeQuery("select * from Services where service_id = '" 
                + getService_id() + "';" );  
     //   ResultSetMetaData rsMetaData = rs.getMetaData();
    //    for(int i =1; i <=rsMetaData.getColumnCount(); i++)
     //       System.out.printf("%-12s\t", rsMetaData.getColumnName(i) );
     //       System.out.println();
        
         while (rs.next()) {
         setService_id(rs.getInt("service_id")); 
         setServiceName(rs.getString("serviceName")); 
         setCharge(rs.getDouble("charge")); 
         setDetail(rs.getString("detail")); 
     //    for(int i =1; i<=rsMetaData.getColumnCount(); i++)
    //         System.out.printf("%-12s\t", rs.getObject(i));
    //     System.out.println();
             //this example is from java book page 1303
    //  }
        }
    }
      

    /**
     * @return the location
     */
    public static  String getLocation() {
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
     * @return the serviceName
     */
    public String getServiceName() {
        return serviceName;
    }

    /**
     * @param serviceName the serviceName to set
     */
    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the service_id
     */
    public int getService_id() {
        return service_id;
    }

    /**
     * @param service_id the service_id to set
     */
    public void setService_id(int service_id) {
        this.service_id = service_id;
    }

    /**
     * @return the charge
     */
    public double getCharge() {
        return charge;
    }

    /**
     * @param charge the charge to set
     */
    public void setCharge(double charge) {
        this.charge = charge;
    }

    /**
     * @return the detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     * @param detail the detail to set
     */
    public void setDetail(String detail) {
        this.detail = detail;
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
     * @return the rate
     */
    public double getRate() {
        return rate;
    }

    /**
     * @param rate the rate to set
     */
    public void setRate(double rate) {
        this.rate = rate;
    }

}


