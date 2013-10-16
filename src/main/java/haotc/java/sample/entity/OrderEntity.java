package haotc.java.sample.entity;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.annotations.Persister;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 9/24/13
 * Time: 4:02 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "order")
public class OrderEntity {
    private int id;
    private String customerLogin;
    private Integer shippingId;
//    List<OrderItemEntity> orderItems;
    private Integer billingId;
    private Date createdDate;
    private String status;

    public OrderEntity(String customerLogin, Integer shippingId, Integer billingId, Date createdDate, String status) {
        this.customerLogin = customerLogin;
        this.shippingId = shippingId;
//        this.orderItems = orderItems;
        this.billingId = billingId;
        this.createdDate = createdDate;
        this.status = status;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "customer_id")
    public String getCustomerLogin() {
        return customerLogin;
    }

    public void setCustomerLogin(String customerLogin) {
        this.customerLogin = customerLogin;
    }

    @Column(name = "shipping_id")
    public Integer getShippingId() {
        return shippingId;
    }

    public void setShippingId(Integer shippingId) {
        this.shippingId = shippingId;
    }

//    @OneToMany
//    @JoinColumn(name = "order_id")
//    public List<OrderItemEntity> getOrderItems() {
//        return orderItems;
//    }
//
//    public void setOrderItems(List<OrderItemEntity> orderItems) {
//        this.orderItems = orderItems;
//    }

    @Column(name = "billing_id")
    public Integer getBillingId() {
        return billingId;
    }

    public void setBillingId(Integer billingId) {
        this.billingId = billingId;
    }

    @Column(name = "created_date")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
