package haotc.java.sample.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.security.PrivateKey;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/9/13
 * Time: 10:28 PM
 * To change this template use File | Settings | File Templates.
 */

//@Entity
//@Table(name = "shipping_address")
public class ShippingAddressEntity {
    private String id;
    private String orderId;
    private String recipientName;
    private String recipientMail;
    private String recipientPhone;
    private String recipientAddress;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getRecipientName() {
        return recipientName;
    }

    public void setRecipientName(String recipientName) {
        this.recipientName = recipientName;
    }

    public String getRecipientMail() {
        return recipientMail;
    }

    public void setRecipientMail(String recipientMail) {
        this.recipientMail = recipientMail;
    }

    public String getRecipientPhone() {
        return recipientPhone;
    }

    public void setRecipientPhone(String recipientPhone) {
        this.recipientPhone = recipientPhone;
    }

    public String getRecipientAddress() {
        return recipientAddress;
    }

    public void setRecipientAddress(String recipientAddress) {
        this.recipientAddress = recipientAddress;
    }
}
