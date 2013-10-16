package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.OrderDao;
import haotc.java.sample.entity.OrderEntity;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl extends GenericDaoImpl<OrderEntity, Integer>
        implements OrderDao {

    public OrderDaoImpl() {
        super(OrderEntity.class);
    }
}
