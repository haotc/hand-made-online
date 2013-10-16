package haotc.java.sample.bo;

import haotc.java.sample.entity.OrderEntity;
import haotc.java.sample.model.CartItemModel;

import java.util.List;

public interface OrderBo extends GenericBo {
    void update(OrderEntity order);

    List<OrderEntity> getOrderList();

    OrderEntity getOrderById(int id);

    void deleteById(int id);

    void create(List<CartItemModel> cart, String userLogin, String name, String mail, String phone, String address);
}
