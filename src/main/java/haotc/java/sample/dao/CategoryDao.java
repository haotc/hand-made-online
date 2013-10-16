package haotc.java.sample.dao;

import haotc.java.sample.entity.CategoryEntity;
import haotc.java.sample.entity.ProductEntity;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/10/13
 * Time: 3:06 PM
 * To change this template use File | Settings | File Templates.
 */
public interface CategoryDao extends GenericDao<CategoryEntity, Integer>  {
    CategoryEntity findByName(String name);

    List<CategoryEntity> list();
}
