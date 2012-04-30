/*
 *  Created by:  Matthew Shank
 *  This bean confirms data types the user entered.
 */
package Inventory;

/**
 *
 * @author Matthew Shank
 */

public class DataCheck {
    //Check entered data is a double type
    public boolean doubleCheck(String x){
        
        int check = x.indexOf(".");
        if ((x.length()-1) - check > 2)
            return false;
        try {
            Double.parseDouble(x);
            return true;
        }
        catch(NumberFormatException nfe){
            return false;
        }
}
    //Check entered data is an integer type
    public boolean intCheck(String x){
        try {
            Integer.parseInt(x);
            return true;
        }
        catch(NumberFormatException nfe){
            return false;
        }
    }
    
}
