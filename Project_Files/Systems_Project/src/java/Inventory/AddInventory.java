/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

/**
 *
 * @author User
 */
import java.sql.*;
import java.io.OutputStream;

import EmployeeLogin.Login;

public class AddInventory {
    private String itemNumber;
    private String partName;
    private String partDescription;
    private String partManufacturer;
    private String partCost;
    private String partPrice;

    public AddInventory() {
        
    }

    
    public void doCreate() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
        dbInitializer.executeUpdate("insert into parts values ('" + getItemNumber() + "', '"
                + getPartName() + "', '" + getPartDescription() + "', '" + getPartManufacturer() + "', '"
                + getPartCost() + "', '" + getPartPrice() + "');");
        
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
       }

    /**
     * @return the itemNumber
     */
    public String getItemNumber() {
        return itemNumber;
    }

    /**
     * @param itemNumber the itemNumber to set
     */
    public void setItemNumber(String itemNumber) {
        this.itemNumber = itemNumber;
    }

    /**
     * @return the partName
     */
    public String getPartName() {
        return partName;
    }

    /**
     * @param partName the partName to set
     */
    public void setPartName(String partName) {
        this.partName = partName;
    }

    /**
     * @return the partDescription
     */
    public String getPartDescription() {
        return partDescription;
    }

    /**
     * @param partDescription the partDescription to set
     */
    public void setPartDescription(String partDescription) {
        this.partDescription = partDescription;
    }

    /**
     * @return the partManufacturer
     */
    public String getPartManufacturer() {
        return partManufacturer;
    }

    /**
     * @param partManufacturer the partManufacturer to set
     */
    public void setPartManufacturer(String partManufacturer) {
        this.partManufacturer = partManufacturer;
    }

    /**
     * @return the partCost
     */
    public String getPartCost() {
        return partCost;
    }

    /**
     * @param partCost the partCost to set
     */
    public void setPartCost(String partCost) {
        this.partCost = partCost;
    }

    /**
     * @return the partPrice
     */
    public String getPartPrice() {
        return partPrice;
    }

    /**
     * @param partPrice the partPrice to set
     */
    public void setPartPrice(String partPrice) {
        this.partPrice = partPrice;
    }

    
    
}

