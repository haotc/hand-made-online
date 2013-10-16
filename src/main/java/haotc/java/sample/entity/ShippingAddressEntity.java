package haotc.java.sample.entity;

import javax.persistence.*;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/9/13
 * Time: 10:28 PM
 * To change this template use File | Settings | File Templates.
 */

@Entity
@Table(name = "shipping_address")
public class ShippingAddressEntity {
    private Integer id;
    private String name;
    private String mail;
    private String phone;
    private String address;

    public ShippingAddressEntity(String name, String mail, String phone, String address) {
        this.name = name;
        this.mail = mail;
        this.phone = phone;
        this.address = address;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "email")
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
