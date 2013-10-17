package haotc.java.sample.bo;

import java.util.List;

import haotc.java.sample.entity.ProductEntity;
import haotc.java.sample.model.ProductModel;

public interface ProductBo extends GenericBo {
	void update(ProductEntity product);

	List<ProductEntity> getProductList(int page, int pageSize, String categoryId);

	ProductEntity getProductById(int id);

	void deleteById(int id);

	int getRowCount();

    List<ProductEntity> list();

    void removeById(Integer id);

    void save(ProductModel product);
}
