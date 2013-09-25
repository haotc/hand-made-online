package haotc.java.sample.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/24/13
 * Time: 4:02 PM
 * To change this template use File | Settings | File Templates.
 */
//@Entity
//@Table(name = "order_details")
public class OrderDetailsEntity {
    private int id;
    private int orderId;
    private int productId;
    private int quantity;
    private double unitPrice;
    private double total;

    public OrderDetailsEntity(int orderId, int productId, int quantity, double total, double unitPrice) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.total = total;
        this.unitPrice = unitPrice;
    }
}
