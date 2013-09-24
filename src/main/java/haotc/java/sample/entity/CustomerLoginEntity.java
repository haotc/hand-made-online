package haotc.java.sample.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "customer_login")
public class CustomerLoginEntity {
    private String login;
    private String password;
    private String customerId;
    private Date createdDate;
    private Date updatedDate;

    public CustomerLoginEntity() {
    }

    public CustomerLoginEntity(String login, String password, String customerId, Date createdDate, Date updatedDate) {
        this.login = login;
        this.password = password;
        this.customerId = customerId;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
    }

    @Id
    @Column(name = "login")
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "customer_id")
    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    @Column(name = "created_date")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Column(name = "updated_date")
    public Date getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }
}
