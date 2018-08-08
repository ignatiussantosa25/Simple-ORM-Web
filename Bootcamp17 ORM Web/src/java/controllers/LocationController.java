/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.LocationDAO;
import entities.Location;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author BINTANG
 */
public class LocationController {
    private final LocationDAO ldao;

    public LocationController(SessionFactory factory) {
        this.ldao = new LocationDAO(factory);
    }
    
    /**
     * Fungsi untuk save atau edit data Location
     * @param locationId
     * @param streetAddress
     * @param postalCode
     * @param city
     * @param stateProvince
     * @param countryId
     * @return true/false
     */
    public boolean saveOrEdit(String locationId,String streetAddress,String postalCode,String city,String stateProvince,String countryId){
        Location location = new Location(Short.parseShort(locationId), streetAddress, postalCode, city, stateProvince, null);
        return this.ldao.insertOrUpdate(location);
    }
    

    private List<Location> convertToListLocation(List<Object> dataAwal) {
        List<Location> dataLocation = new ArrayList<>();
        for (Object object : dataAwal) {
            Location location = (Location) object;
            dataLocation.add(location);
        }
        return dataLocation;
    }
    /**
     * controller fungsi search location
     * @param category sebagai parameter nama kolom 
     * @param data sebagai nama datanya
     * @return list
     */
    public List<Location> search(String category, String data) {
        return this.convertToListLocation(this.ldao.search(category, data));
    }
    
    /**
     * Fungsi untuk menampilkan semua data pada table Location
     * @return memanggil fungsi getAll pada LocationDAO
     */
    public List<Location> getAll(){
        return this.convertToListLocation(this.ldao.getAll());
    }
}
