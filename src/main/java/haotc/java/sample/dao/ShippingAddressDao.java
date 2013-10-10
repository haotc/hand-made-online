package haotc.java.sample.dao;

import haotc.java.sample.entity.ProductEntity;

import java.util.List;

public interface ShippingAddressDao extends GenericDao<ProductEntity, Integer> {
    List<ProductEntity> readAllPlus();
}
