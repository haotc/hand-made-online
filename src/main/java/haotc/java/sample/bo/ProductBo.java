package haotc.java.sample.bo;

import java.util.List;

import haotc.java.sample.entity.ProductEntity;

public interface ProductBo extends GenericBo {
	void update(ProductEntity product);

	List<ProductEntity> getProductList(int page, int pageSize);

	ProductEntity getProductById(int id);

	void deleteById(int id);

	void create(ProductEntity product);

	int getRowCount();
}
