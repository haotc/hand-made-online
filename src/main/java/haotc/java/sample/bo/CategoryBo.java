package haotc.java.sample.bo;

import haotc.java.sample.entity.CategoryEntity;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/10/13
 * Time: 11:09 AM
 * To change this template use File | Settings | File Templates.
 */
public interface CategoryBo {
    CategoryEntity getCategoryByName(String name);

    List<CategoryEntity> list();

    void removeById(Integer id);

    CategoryEntity getCategoryById(Integer id);

    void save(String name, String desc);

    void save(Integer id, String name, String desc);
}
