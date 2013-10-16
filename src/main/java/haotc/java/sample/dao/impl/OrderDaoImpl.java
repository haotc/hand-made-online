package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.OrderDao;
import haotc.java.sample.entity.CustomerLoginEntity;
import haotc.java.sample.entity.OrderEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDaoImpl extends GenericDaoImpl<OrderEntity, Integer>
        implements OrderDao {

    public OrderDaoImpl() {
        super(OrderEntity.class);
    }

    @Override
    public List<OrderEntity> list() {
        return getSession().createCriteria(OrderEntity.class).list();
    }
}
