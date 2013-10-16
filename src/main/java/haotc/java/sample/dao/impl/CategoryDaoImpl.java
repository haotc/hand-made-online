package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.CategoryDao;
import haotc.java.sample.entity.CategoryEntity;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDaoImpl extends GenericDaoImpl<CategoryEntity, Integer>
        implements CategoryDao {

    public CategoryDaoImpl() {
        super(CategoryEntity.class);
    }

    @Override
    public CategoryEntity findByName(String name) {
        Criteria crit = getSession().createCriteria(CategoryEntity.class);
        crit.add(Restrictions.like("name", name));
        return (CategoryEntity) crit.uniqueResult();
    }

    @Override
    public List<CategoryEntity> list() {
        return getSession().createCriteria(CategoryEntity.class).list();
    }
}
