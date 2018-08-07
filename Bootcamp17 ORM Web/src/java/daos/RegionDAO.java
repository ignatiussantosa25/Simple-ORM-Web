/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Region;
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
}
