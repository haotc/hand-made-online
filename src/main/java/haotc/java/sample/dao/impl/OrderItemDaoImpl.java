package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.OrderItemDao;
import haotc.java.sample.entity.OrderItemEntity;
import org.springframework.stereotype.Repository;

@Repository
public class OrderItemDaoImpl extends GenericDaoImpl<OrderItemEntity, Integer>
        implements OrderItemDao {

    public OrderItemDaoImpl() {
        super(OrderItemEntity.class);
    }
}
