package haotc.java.sample.bo;

import haotc.java.sample.entity.CategoryEntity;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/10/13
 * Time: 11:09 AM
 * To change this template use File | Settings | File Templates.
 */
public interface CategoryBo {
    CategoryEntity getCategoryByName(String name);
}
