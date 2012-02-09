/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaBeans;

/**
 *
 * @author jstone18
 */
public class VehicleBean {
    private String vin;
    private String make;
    private String model;
    private String myear;
    private String exterior;
    private String interior;

    public void VehicleBean(){
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
     * @return the make
     */
    public String getMake() {
        return make;
    }

    /**
     * @param make the make to set
     */
    public void setMake(String make) {
        this.make = make;
    }

    /**
     * @return the model
     */
    public String getModel() {
        return model;
    }

    /**
     * @param model the model to set
     */
    public void setModel(String model) {
        this.model = model;
    }

    /**
     * @return the myear
     */
    public String getMyear() {
        return myear;
    }

    /**
     * @param myear the myear to set
     */
    public void setMyear(String myear) {
        this.myear = myear;
    }

    /**
     * @return the exterior
     */
    public String getExterior() {
        return exterior;
    }

    /**
     * @param exterior the exterior to set
     */
    public void setExterior(String exterior) {
        this.exterior = exterior;
    }

    /**
     * @return the interior
     */
    public String getInterior() {
        return interior;
    }

    /**
     * @param interior the interior to set
     */
    public void setInterior(String interior) {
        this.interior = interior;
    }


} // End  of VehicleBean class


