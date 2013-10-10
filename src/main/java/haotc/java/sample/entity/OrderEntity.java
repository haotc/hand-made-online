package haotc.java.sample.entity;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/24/13
 * Time: 4:02 PM
 * To change this template use File | Settings | File Templates.
 */
//@Entity
//@Table(name = "order_details")
public class OrderEntity {
    private int id;
    private int customerLoginId;
    private ShippingAddressEntity shippingAddress;
    List<OrderItemEntity> orderItems;
}
