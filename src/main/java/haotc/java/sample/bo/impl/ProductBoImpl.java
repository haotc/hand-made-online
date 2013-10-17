package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.ProductBo;
import haotc.java.sample.common.Category;
import haotc.java.sample.dao.CategoryDao;
import haotc.java.sample.dao.ProductDao;
import haotc.java.sample.entity.ProductEntity;
import haotc.java.sample.model.ProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("productBo")
@Transactional(readOnly = true)
public class ProductBoImpl extends GenericBoImpl implements ProductBo {

    @Autowired
    private ProductDao productDao;

    @Autowired
    private CategoryDao categoryDao;

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
    public int getRowCount() {
//        return productDao.getRowCount();
        return 0;
    }

    @Override
    public List<ProductEntity> list() {
        return productDao.list();
    }

    @Override
    public void removeById(Integer id) {
        productDao.deleteByPk(id);
    }

    @Override
    @Transactional(readOnly = false)
    public void save(ProductModel product) {
        ProductEntity p = null;
        if (product.getId() == null) {
            p = new ProductEntity();
        } else {
            p = productDao.findById(product.getId());
        }
        p.setCategory(categoryDao.findById(product.getCategoryId()));
        p.setName(product.getName());
        p.setShortDesc(product.getShortDesc());
        p.setDetailDesc(product.getDetailDesc());
        p.setQuantity(product.getQuantity());
        p.setNumberOfSold(product.getNumberOfSold());
        p.setUnitPrice(product.getUnitPrice());
        productDao.save(p);
    }
}
