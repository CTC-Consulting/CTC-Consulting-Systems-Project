/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

/**
 *
 * @author Matthew Shank
 */

public class DataCheck {
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
