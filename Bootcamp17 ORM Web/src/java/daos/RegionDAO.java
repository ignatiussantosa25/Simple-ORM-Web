/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Region;
import java.util.List;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author Ignatius
 */
public class RegionDAO {
    private final FunctionDAO fdao;

    public RegionDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }

    public boolean insertOrUpdate(Region region) {
        return this.fdao.insertOrUpdate(region);
    }
     public  List<Object> search(String category, String data){
     return this.fdao.get("FROM Region WHERE "+category+" LIKE '%"+data+"%'");
    
   }
    
   /**
     * Fungsi untuk menampilkan semua data pada table Region
     * @return memanggil fungsi get pada FunctionDAO
     */
    public List<Object> getAll(){
        return this.fdao.get("FROM Region");
    }
    
    public List<Object> getAllSort(String category, String sort){
        return this.fdao.get("FROM Region ORDER BY "+category+" "+sort);
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
