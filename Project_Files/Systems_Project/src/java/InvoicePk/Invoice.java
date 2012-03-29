
package InvoicePk;

/**
 *
 * @author Joe
 */
//import EmployeeLogin.Login;

import Order.WorkOrder;
import java.sql.*;

   
    
public class Invoice {
    
    private String invoiceNum;
    private String location;
    private String TimeIn;
    private String vin;
    private String checkIn_Emp;
    private String cus_id;
    private String first_Name;
    private String last_Name;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String emp_id;
    private String description;
    private String total;
    private String balance;
    private String status;
    private String TimeOut;
    private String address;
    private String phone;
    private String manager;
    private String line_ID;
    private String date;
    private String service_ID;

    
    private String part;
    private String parts_qty;
    private String parts_Price;
    private String parts_Total;
    private String hrs_qty;
    private String rate;
    private String labor_Total;
    private String line_Total;
    
    // No arg constructor
    public Invoice() {
    }
    
    
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
        
        
        public void getInfo() throws SQLException, ClassNotFoundException {
      
       try {
        Statement statement = Invoice.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from workorder where invoiceNum = '" 
                + getInvoiceNum() +  "';" );
        
        
        while (rs.next()) {
         setInvoiceNum(rs.getString("invoiceNum")); 
         setLocation(rs.getString("location")); 
         setTimeIn(rs.getString("TimeIn")); 
         setVin(rs.getString("vin")); 
         setCheckIn_Emp(rs.getString("checkIn_Emp")); 
         setCus_id(rs.getString("cus_id")); 
         setFirst_Name(rs.getString("first_Name")); 
         setLast_Name(rs.getString("last_Name")); 
         setStreet(rs.getString("street")); 
         setCity(rs.getString("city"));
         setState(rs.getString("state"));
         setZip(rs.getString("zip"));
         setEmp_id(rs.getString("emp_id"));
         setDescription(rs.getString("description"));
         setTotal(rs.getString("total"));
         setBalance(rs.getString("balance"));
         setStatus(rs.getString("status"));
         setTimeOut(rs.getString("TimeOut"));
         
        }
                }
        catch (SQLException ex) {
                    ex.printStackTrace();
                }
     }  
    
        
        public void storeLocation() throws SQLException, ClassNotFoundException {
         // WorkOrder loc = new WorkOrder();
        
        try {    
        Statement statement = Invoice.dbInitializer();
        ResultSet rs = statement.executeQuery("select locations.location, locations.address,"
        + " locations.phone, locations.manager from Locations "
        + "LEFT join WorkOrder on Locations.Location = " 
        + "WorkOrder.Location where  "
        + "Locations.Location = '" 
        + getLocation() + "';" ); 
        
        while (rs.next()) {
         setLocation(rs.getString("location")); 
         setAddress(rs.getString("address")); 
         setPhone(rs.getString("phone")); 
         setManager(rs.getString("manager")); 
         
         
        }
                }
        
        catch (SQLException ex) {
                    ex.printStackTrace();
                }
        
    }
              
        public void getLineInfo() throws SQLException, ClassNotFoundException {
      
       
            try {
        Statement statement = Invoice.dbInitializer();
        ResultSet rs = statement.executeQuery("select * from lineitem where invoiceNum = " 
                +  getInvoiceNum()  +  ";" );
        
   
        
        while (rs.next()) {
         setLine_ID(rs.getString("line_ID")); 
         setDate(rs.getString("date")); 
         setInvoiceNum(rs.getString("invoiceNum")); 
         setService_ID(rs.getString("Service_Id")); 
         setDescription(rs.getString("description")); 
         setPart(rs.getString("part")); 
         setParts_qty(rs.getString("parts_qty")); 
         setParts_Price(rs.getString("parts_Price")); 
         setParts_Total(rs.getString("parts_Total")); 
         setEmp_id(rs.getString("emp_id"));
         setHrs_qty(rs.getString("hrs_qty"));
         setRate(rs.getString("rate"));
         setLabor_Total(rs.getString("labor_Total"));
         setLine_Total(rs.getString("line_Total"));

         
        }
                }
            
        catch (SQLException ex) {
                    ex.printStackTrace();
                }
            
        } 
        


   //Setters and Getters     



    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHrs_qty() {
        return hrs_qty;
    }

    public void setHrs_qty(String hrs_qty) {
        this.hrs_qty = hrs_qty;
    }

    public String getLabor_Total() {
        return labor_Total;
    }

    public void setLabor_Total(String labor_Total) {
        this.labor_Total = labor_Total;
    }

    public String getLine_ID() {
        return line_ID;
    }

    public void setLine_ID(String line_ID) {
        this.line_ID = line_ID;
    }

    public String getLine_Total() {
        return line_Total;
    }

    public void setLine_Total(String line_Total) {
        this.line_Total = line_Total;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }

    public String getParts_Price() {
        return parts_Price;
    }

    public void setParts_Price(String parts_Price) {
        this.parts_Price = parts_Price;
    }

    public String getParts_Total() {
        return parts_Total;
    }

    public void setParts_Total(String parts_Total) {
        this.parts_Total = parts_Total;
    }

    public String getParts_qty() {
        return parts_qty;
    }

    public void setParts_qty(String parts_qty) {
        this.parts_qty = parts_qty;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }
  
 

    
          

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTimeIn() {
        return TimeIn;
    }

    public String getTimeOut() {
        return TimeOut;
    }

    public String getBalance() {
        return balance;
    }

    public String getCheckIn_Emp() {
        return checkIn_Emp;
    }

    public String getCity() {
        return city;
    }

    public String getCus_id() {
        return cus_id;
    }

    public String getDescription() {
        return description;
    }

    public String getEmp_id() {
        return emp_id;
    }

    public String getFirst_Name() {
        return first_Name;
    }

    public String getInvoiceNum() {
        return invoiceNum;
    }

    public String getLast_Name() {
        return last_Name;
    }

    public String getLocation() {
        return location;
    }

    public String getState() {
        return state;
    }

    public String getStatus() {
        return status;
    }

    public String getStreet() {
        return street;
    }

    public String getTotal() {
        return total;
    }

    public String getVin() {
        return vin;
    }

    public String getZip() {
        return zip;
    }

    public void setTimeIn(String TimeIn) {
        this.TimeIn = TimeIn;
    }

    public void setTimeOut(String TimeOut) {
        this.TimeOut = TimeOut;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public void setCheckIn_Emp(String checkIn_Emp) {
        this.checkIn_Emp = checkIn_Emp;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setCus_id(String cus_id) {
        this.cus_id = cus_id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public void setFirst_Name(String first_Name) {
        this.first_Name = first_Name;
    }

    public void setInvoiceNum(String invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public void setLast_Name(String last_Name) {
        this.last_Name = last_Name;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
    
       public String getService_ID() {
        return service_ID;
    }

    public void setService_ID(String service_ID) {
        this.service_ID = service_ID;
    }
    
    
}


