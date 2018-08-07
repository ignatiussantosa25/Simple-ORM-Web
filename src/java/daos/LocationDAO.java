/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Location;
import org.hibernate.SessionFactory;

/**
 *
 * @author Gusma
 */
public class LocationDAO {
    private FunctionDAO fdao;

    public LocationDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    /**
     * Fungsi DAO untuk mengambil data dari tabel Location berdasarkan ID
     * @param locationId String
     * @return Location
     */
    public Location getLocationById (String locationId){
        return (Location) this.fdao.getById("FROM Location WHERE locationId='"+locationId+"'");
    }
    
}
