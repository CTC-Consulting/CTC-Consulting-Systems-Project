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

import java.util.*;
import java.text.SimpleDateFormat;
import Customers.CustomerSearch;
import Customers.NewCustomers;
//import Customers.CustomerUpdate;




public class WorkOrder {
    
    public String location;
    private String address;
    private String phone;
    private String manager;
    private String userId;
    private String password;
    private String serviceName;
    private int id;
    public int service_id;
    private double charge;
    private String detail;
    private String emp_id;
    private String firstName;
    private String lastName;
    private double rate;
    public double total;
    public String vin;
    public int cus_id;
    private int InvoiceNum;
    public int autoIncKeyFromFunc;
   
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
     
      public void checkServiceId() throws SQLException, ClassNotFoundException {
        Statement statement = Login.dbInitializer();
        ResultSet rs = statement.executeQuery("select service_id, serviceName, detail, charge from Services where service_id = '" 
                + service_id + "';" );
        ResultSetMetaData rsmd = rs.getMetaData();   
        
        while (rs.next()) {
            int service_id = rs.getInt(1);
            
            int [] sid = new int [11];
            for(int i = 0; i < sid.length; i++){
                sid[i] = service_id;
                 setServiceName(rs.getString("serviceName")); 
                 setCharge(rs.getDouble("charge")); 
                 setDetail(rs.getString("detail")); 
            }
            
            total +=rs.getDouble("charge");
            
        
      }
      
      }
      
    private static String DATE_FORMAT_NOW = "yyyy-MM-dd HH:mm:ss";

    /**
     * @return the DATE_FORMAT_NOW
     */
    public static String getDATE_FORMAT_NOW() {
        return DATE_FORMAT_NOW;
    }

    /**
     * @param aDATE_FORMAT_NOW the DATE_FORMAT_NOW to set
     */
    public static void setDATE_FORMAT_NOW(String aDATE_FORMAT_NOW) {
        DATE_FORMAT_NOW = aDATE_FORMAT_NOW;
    }
    
    public static String now() {
    Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat(getDATE_FORMAT_NOW());
    return sdf.format(cal.getTime());
     }

    public void doCreateWorkOrder() throws SQLException, ClassNotFoundException {
       ResultSet rs = null;
       try {
         Statement stmt = Login.dbInitializer();
        
         stmt.executeUpdate("insert into workOrder(location, TimeIn, vin, cus_id, emp_id, total, balance,status)"
                 + " values('" + getLocation() + "','" + now() + "','" + getVin() + "','" + getCus_id() + "','" +
                 getEmp_id() + "', '" + total + "', '" + total + "','" + "open" + "');");
         System.out.println( " " + getCus_id());
         
      //   int autoIncKeyFromFunc = -1;
         rs = stmt.executeQuery("SELECT LAST_INSERT_ID()");
         if (rs.next()) {
         autoIncKeyFromFunc = rs.getInt(1);
         } else {
        // throw an exception from here
         }

        rs.close();

       System.out.println("Key returned from " +
                       "'SELECT LAST_INSERT_ID()': " +
                       autoIncKeyFromFunc);
         }
        catch (SQLException ex) {
            System.out.println("*************************************************************");
                    ex.printStackTrace();
                } 
       }
    
  /*  public void doCreateLineItem() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
         parts_Total = (parts_qty * parts_Price);  
         labor_Total = (hrs_qty * rate);
         line_Total = (parts_Total + labor_Total)
         dbInitializer.executeUpdate("insert into lineItem(date, invoiceNum,,service_Id, description, part, part_qty, "
                 + "part_Price,parts_Total, emp_id, hrs_qty, rate, labor_Total, line_Total) values ('" + now() + "', '" 
                 + getInvoiceNum() + "','" + service_id + "','" + description + "','" + part + "','" + parts_qty +"','"
                 + parts_Price + "','" + part_Total + "','"  + getEmp_id() + "', '" + hrs_qty + "', '" + rate + "', '" 
                 + labor_Total + "', '" + line_Total +  "');");
         
         
            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
       }
       * 
       */
    
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
 //   public int getService_id() {
   //     return service_id;
 //   }

    /**
     * @param service_id the service_id to set
     */
 //   public void setService_id(int service_id) {
 //       this.service_id = service_id;
 //   }

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
     * @return the InvoiceNum
     */
    public int getInvoiceNum() {
        return InvoiceNum;
    }

    /**
     * @param InvoiceNum the InvoiceNum to set
     */
    public void setInvoiceNum(int InvoiceNum) {
        this.InvoiceNum = InvoiceNum;
    }

    
}


