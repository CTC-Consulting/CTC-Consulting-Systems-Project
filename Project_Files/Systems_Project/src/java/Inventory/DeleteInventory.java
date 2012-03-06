/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

/**
 *
 * @author mshank
 */

import EmployeeLogin.Login;
import java.sql.SQLException;
import java.sql.Statement;

public class DeleteInventory {
    private String itemNumber;
    
    public DeleteInventory() {
        
    }
    
    public void doDelete() throws SQLException, ClassNotFoundException {
        Statement dbInitializer = Login.dbInitializer();
        try {
        dbInitializer.executeUpdate("delete from parts where "
                + "partNum = '" + getItemNumber() + "';");
                            
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
}
