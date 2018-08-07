/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.RegionDAO;
import entities.Region;
import org.hibernate.SessionFactory;
import java.math.*;

/**
 *
 * @author Gusma
 */
public class RegionController {
    private RegionDAO rdao;

    public RegionController(SessionFactory factory) {
        this.rdao = new RegionDAO(factory);
    }
    
    /**
     * Fungsi untuk mengambil data berdasarkan ID 
     * @param regionId String
     * @return getRegionById
     */
    
    public Region findByID(String regionId){
        Region region = new Region();
        return this.rdao.getRegionById(regionId);
    }
}
