package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.dao.CategoryDao;
import haotc.java.sample.entity.CategoryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("categoryBo")
@Transactional(readOnly = true)
public class CategoryBoImpl extends GenericBoImpl implements CategoryBo {

    @Autowired
    private CategoryDao categoryDao;

    @Override
    public CategoryEntity getCategoryByName(String name) {
        return categoryDao.findByName(name);
    }
}
