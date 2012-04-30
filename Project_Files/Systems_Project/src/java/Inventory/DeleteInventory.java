/*
 * Created by:  Matthew Shank
 * This bean contains the code to delete a part from the database
 */
package Inventory;

/**
 *
 * @author mshank
 */
//  Import login class containing dbInitializer
import EmployeeLogin.Login;
import java.sql.SQLException;
import java.sql.Statement;

public class DeleteInventory {
    private String itemNumber;
    
    public DeleteInventory() {
        
    }
    //Delete the part from the database
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
