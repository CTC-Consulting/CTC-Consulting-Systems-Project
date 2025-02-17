/*
 * Created by:  Matthew Shank
 * This bean contains the code to edit a part in the database
 */
package Inventory;

/**
 *
 * @author Matthew Shank
 */

//  Import bean that contains dbInitializer
import EmployeeLogin.Login;
import java.sql.SQLException;
import java.sql.Statement;

//  Created the inventory class
public class EditInventory {
    private String itemNumber;
    private String partName;
    private String partDescription;
    private String partManufacturer;
    private String partCost;
    private String partPrice;
    private String partQuantity;
    private String quantityAdd;
    
    public EditInventory() {
    }
    //Update part information
     public void doEdit() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
        dbInitializer.executeUpdate("update parts set part = '" 
                + getPartName() + "', description = '" + getPartDescription()
                + "', manufacturer = '" + getPartManufacturer()
                + "', cost = '" + getPartCost() + "', price = '"
                + getPartPrice() + "', quantity = '" + getPartQuantity()
                + "' where partNum = '" + getItemNumber() + "';");
                            
        }
        catch (SQLException ex) {
                    ex.printStackTrace();
                } 
       }
     //Update part quantity
     public void doAddQuantity() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
        dbInitializer.executeUpdate("update parts set quantity = quantity + '" 
                + getQuantityAdd()
                + "' where partNum = '" + getItemNumber() + "';");
                            
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
     * @return the partCost, trimming for extra digits
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
     * @return the partPrice, trimming for extra digits
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

    /**
     * @return the quantityAdd
     */
    public String getQuantityAdd() {
        return quantityAdd;
    }

    /**
     * @param quantityAdd the quantityAdd to set
     */
    public void setQuantityAdd(String quantityAdd) {
        this.quantityAdd = quantityAdd;
    }
}
