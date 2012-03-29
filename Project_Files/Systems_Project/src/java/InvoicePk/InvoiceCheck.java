/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InvoicePk;

/**
 *
 * @author Joe
 */
public class InvoiceCheck {
    
    private boolean intChk;
            
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
    

