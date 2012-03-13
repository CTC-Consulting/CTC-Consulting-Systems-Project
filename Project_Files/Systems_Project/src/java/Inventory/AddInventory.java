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
    private String partName;
    private String partDescription;
    private String partManufacturer;
    private String partCost;
    private String partPrice;
    private String partQuantity;

    public AddInventory() {
        
    }

    
    public void doCreate() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
        dbInitializer.executeUpdate("insert into parts (part, description, "
                + "manufacturer, cost, price, quantity) values ('" + 
                getPartName() + "', '" + getPartDescription() + "', '"
                + getPartManufacturer() + "', '" + getPartCost() + "', '"
                + getPartPrice() + "', '" + getPartQuantity() + "');");
            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
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
        return partCost.trim();
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
        return partPrice.trim();
    }

    /**
     * @param partPrice the partPrice to set
     */
    public void setPartPrice(String partPrice) {
        this.partPrice = partPrice;
    }

    /**
     * @return the partQuantity
     */
    public String getPartQuantity() {
        return partQuantity;
    }

    /**
     * @param partQuantity the partQuantity to set
     */
    public void setPartQuantity(String partQuantity) {
        this.partQuantity = partQuantity;
    }

    
    
}

