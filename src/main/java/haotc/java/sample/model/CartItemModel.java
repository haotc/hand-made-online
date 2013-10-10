package haotc.java.sample.model;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/9/13
 * Time: 9:00 AM
 * To change this template use File | Settings | File Templates.
 */
public class CartItemModel implements Serializable {
    private int productId;
    private String productName;
    private int quantity;
    private int unitPrice;
    private String imageUrl;

    public CartItemModel(int productId, String productName, int quantity, int unitPrice, String imageUrl) {
        this.productId = productId;
        this.productName = productName;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.imageUrl = imageUrl;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
