package com.Bus;

public class Route {
	private String routeName;
    private String origin;
    private String destination;
    private int km;

    public Route(String routeName, String origin, String destination, int km) {
        this.routeName = routeName;
        this.origin = origin;
        this.destination = destination;
        this.km = km;
  
}
    public String getRouteName() {
        return this.routeName;
    }

    public void setRouteName(String routeName) {
        this.routeName = routeName;
    }
    public String getOrigin() {
        return this.origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
    
    
    
    
    public String getDestination() {
        return this.destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
    
    
    public int getKm() {
        return this.km;
    }

    public void setKm(int km) {
        this.km = km;
    }
    
    
    
    
    
    
}