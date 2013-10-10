package haotc.java.sample.dao;

import haotc.java.sample.entity.ProductEntity;

import java.util.List;

public interface ProductDao extends GenericDao<ProductEntity, Integer> {
    List<ProductEntity> getProductList(int page, int pageSize);
}
