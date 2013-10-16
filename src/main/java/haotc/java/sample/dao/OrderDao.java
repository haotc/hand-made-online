package haotc.java.sample.dao;

import haotc.java.sample.entity.OrderEntity;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/15/13
 * Time: 9:09 PM
 * To change this template use File | Settings | File Templates.
 */
public interface OrderDao extends GenericDao<OrderEntity, Integer> {

    List<OrderEntity> list();
}
