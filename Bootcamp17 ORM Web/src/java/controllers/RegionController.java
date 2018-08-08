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
    
    
    private List<Region> convertToListRegion(List<Object> dataAwal) {
        List<Region> dataRegion = new ArrayList<>();
        for (Object object : dataAwal) {
            Region region = (Region) object;
            dataRegion.add(region);
        }
        return dataRegion;
    }
    
    
    public List<Region> search(String category, String data) {
        return this.convertToListRegion(this.rdao.search(category, data));
    }
    
    /**
     * Fungsi untuk menampilkan semua data pada table Region
     * @return menaggil fungsi getAll pada RegionDAO
     */
    public List<Region> getAll(){
        return this.convertToListRegion(this.rdao.getAll());
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
