package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.ProductDao;
import haotc.java.sample.entity.ProductEntity;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

@Repository
public class ProductDaoImpl extends GenericDaoImpl<ProductEntity, Integer>
        implements ProductDao {

    public ProductDaoImpl() {
        super(ProductEntity.class);
    }

    @Override
    public List<ProductEntity> getProductList(int page, int pageSize, String categoryName) {
//        String query =
//                "SELECT product.id, " +
//                        "product.name, " +
//                        "product.short_desc, " +
//                        "product.detail_desc, " +
//                        "producer.name" +
//                        "FROM product product " +
//                        "JOIN producer producer" +
//                        "ON product.producer_id = producer.id";

//        String queryStr = "from ProductEntity p";
//        String queryStr = "select p.id, p.name, p.shortDesc, p.detailDesc, p.categoryId, p.producerId, pro.name from ProductEntity p join ProducerEntity pro on p.producerId = pro.id";
//        Query query = getSession().createQuery(queryStr);
//        return getSession().createQuery(queryStr).setResultTransformer(Transformers.aliasToBean(ProductEntity.class)).list();
        Criteria crit = getSession().createCriteria(ProductEntity.class);
        if (!StringUtils.isEmpty(categoryName)) {
            crit.createAlias("category", "cate")
                    .add(Restrictions.like("cate.name", categoryName));
        }
        crit.addOrder(Order.desc(("numberOfSold")));
        crit.setMaxResults(pageSize);
        crit.setFirstResult((page - 1) * pageSize);
//        crit.setProjection(Projections.projectionList()
//                .add(Projections.property("id"), "id")
//                .add(Projections.property("name"), "name")
//                .add(Projections.property("shortDesc"), "shortDesc")
//        ).setResultTransformer(Transformers.aliasToBean(ProductEntity.class));
        return crit.list();
    }

    @Override
    public List<ProductEntity> getProductList(int page, int pageSize) {
        Criteria crit = getSession().createCriteria(ProductEntity.class);
        crit.addOrder(Order.desc(("numberOfSold")));
        crit.setMaxResults(pageSize);
        crit.setFirstResult((page - 1) * pageSize);
        return crit.list();
    }
}
