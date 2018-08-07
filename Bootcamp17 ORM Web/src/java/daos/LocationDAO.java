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
}
