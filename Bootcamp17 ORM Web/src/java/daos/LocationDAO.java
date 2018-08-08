/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Location;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ignatius
 */
public class LocationDAO {

    private final FunctionDAO fdao;

    public LocationDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }

    public boolean insertOrUpdate(Location location) {
        return this.fdao.insertOrUpdate(location);
    }
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Location WHERE " + category + " LIKE '%" + data + "%'");

    }
    
    /**
     * Fungsi untuk menampilkan semua data pada table Location 
     * @return memanggil fungsi get dari FunctionDAO
     */
    public List<Object> getAll(){
        return this.fdao.get("FROM Location");
    } 

}
