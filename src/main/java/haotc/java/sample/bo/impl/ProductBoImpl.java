package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.common.Category;
import haotc.java.sample.dao.ProductDao;
import haotc.java.sample.entity.ProductEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("productBo")
@Transactional(readOnly = true)
public class ProductBoImpl extends GenericBoImpl implements ProductBo {

    @Autowired
    private ProductDao productDao;

    public void update(ProductEntity product) {
        productDao.save(product);
    }

    public ProductDao getProductDao() {
        return productDao;
    }

    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

    @Override
    public List<ProductEntity> getProductList(int page, int pageSize, String categoryName) {
        if (Category.HIGHT_LIGHT_PRODUCT.equalsIgnoreCase(categoryName)) {
            return productDao.getProductList(page, pageSize);
        }
        return productDao.getProductList(page, pageSize, categoryName);
    }

    @Override
    public ProductEntity getProductById(int id) {
        return productDao.findById(id);
    }

    @Override
    public void deleteById(int id) {
//        productDao.deleteById(id);
    }

    @Override
    public void create(ProductEntity product) {
//        productDao.create(product);
    }

    @Override
    public int getRowCount() {
//        return productDao.getRowCount();
        return 0;
    }
}
