/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.LocationDAO;
import entities.Location;
import org.hibernate.SessionFactory;

/**
 *
 * @author Gusma
 */
public class LocationController {
    private LocationDAO ldao;
    
    public LocationController(SessionFactory factory){
        this.ldao = new LocationDAO(factory);
    }
    
    /**
     * Fungsi find by ID dari data location
     * @param locationId String
     * @return getLocationById
     */
    public Location findByID(String locationId){
        Location location = new Location();
        return this.ldao.getLocationById(locationId);
    }
}
