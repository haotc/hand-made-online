package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.OrderBo;
import haotc.java.sample.dao.OrderDao;
import haotc.java.sample.dao.OrderItemDao;
import haotc.java.sample.dao.ShippingAddressDao;
import haotc.java.sample.entity.OrderEntity;
import haotc.java.sample.entity.OrderItemEntity;
import haotc.java.sample.entity.ShippingAddressEntity;
import haotc.java.sample.model.CartItemModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("orderBo")
@Transactional(readOnly = true)
public class OrderBoImpl extends GenericBoImpl implements OrderBo {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private OrderItemDao orderItemDao;

    @Autowired
    private ShippingAddressDao shippingAddressDao;

    @Override
    public void update(OrderEntity order) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<OrderEntity> getOrderList() {
        return orderDao.list();
    }

    @Override
    public OrderEntity getOrderById(int id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void deleteById(int id) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    @Transactional(readOnly = false)
    public void create(List<CartItemModel> cart, String userLogin, String name, String mail, String phone, String address) {
        List<OrderItemEntity> orderItemList = new ArrayList<OrderItemEntity>();
        int totalMoney = 0;
        for (CartItemModel item : cart) {
            OrderItemEntity orderItem = new OrderItemEntity(item.getProductId(), item.getQuantity(), item.getQuantity() * item.getUnitPrice(), item.getUnitPrice());
            orderItemDao.save(orderItem);
            orderItemList.add(orderItem);
            totalMoney += item.getQuantity() * item.getUnitPrice();
        }

        ShippingAddressEntity shipping = new ShippingAddressEntity(name, mail, phone, address);
        int shippingId = shippingAddressDao.save(shipping);

        OrderEntity order = new OrderEntity(userLogin, orderItemList, shippingId, null, "unchecked", new Date());
        order.setTotalMoney(totalMoney);
        orderDao.save(order);
    }
}