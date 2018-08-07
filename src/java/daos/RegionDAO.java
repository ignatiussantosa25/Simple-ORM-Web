/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Region;
import java.math.BigDecimal;
import org.hibernate.SessionFactory;

/**
 *
 * @author Gusma
 */
public class RegionDAO {
    private FunctionDAO fdao;

    public RegionDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    /**
     * Fungsi get job by ID
     * @param regionId String
     * @return 
     */
    public Region getRegionById(String regionId){
        return (Region) this.fdao.getById("FROM Region WHERE regionId='"+regionId+"'");
    }
}
