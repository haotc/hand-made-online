package haotc.java.sample.model;

import haotc.java.sample.entity.CategoryEntity;

/**
 * Created by IntelliJ IDEA.
 * User: HaoTC
 * Date: 9/23/13
 * Time: 7:48 PM
 * To change this template use File | Settings | File Templates.
 */
public class ProductModel {
    private Integer id;
    private Integer categoryId;
    private String name;
    private String shortDesc;
    private String detailDesc;
    private Integer unitPrice;
    private Integer quantity;
    private Integer numberOfSold;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public Integer getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getNumberOfSold() {
        return numberOfSold;
    }

    public void setNumberOfSold(Integer numberOfSold) {
        this.numberOfSold = numberOfSold;
    }
}
