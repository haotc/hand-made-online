package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.CategoryBo;
import haotc.java.sample.common.Category;
import haotc.java.sample.dao.CategoryDao;
import haotc.java.sample.entity.CategoryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("categoryBo")
@Transactional(readOnly = true)
public class CategoryBoImpl extends GenericBoImpl implements CategoryBo {

    @Autowired
    private CategoryDao categoryDao;

    @Override
    public CategoryEntity getCategoryByName(String name) {
        return categoryDao.findByName(name);
    }

    @Override
    public List<CategoryEntity> list() {
        return categoryDao.list();
    }

    @Override
    @Transactional(readOnly = false)
    public void removeById(Integer id) {
        categoryDao.deleteByPk(id);
    }

    @Override
    public CategoryEntity getCategoryById(Integer id) {
        return categoryDao.findById(id);
    }

    @Override
    public void save(String name, String desc) {
        CategoryEntity cate = new CategoryEntity();
        cate.setName(name);
        cate.setDescription(desc);
        categoryDao.save(cate);
    }

    @Override
    @Transactional(readOnly = false)
    public void save(Integer id, String name, String desc) {
        CategoryEntity cate = categoryDao.findById(id);
        cate.setName(name);
        cate.setDescription(desc);
        categoryDao.save(cate);
    }
}
