/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.RegionDAO;
import entities.Region;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;
import java.math.BigDecimal;

/**
 *
 * @author BINTANG
 */
public class RegionController {
    private final RegionDAO rdao;

    public RegionController(SessionFactory factory) {
        this.rdao = new RegionDAO(factory);
    }
    /**
     * Fungsi untuk melakukan save atau edit data region
     * @param regionId
     * @param regionName
     * @return true/false
     */
    public boolean saveOrEdit(String regionId,String regionName){
        Region region = new Region(new BigDecimal(regionId), regionName);
        return this.rdao.insertOrUpdate(region);
    }
}
