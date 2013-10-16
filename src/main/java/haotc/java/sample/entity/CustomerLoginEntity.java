package haotc.java.sample.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_login")
public class CustomerLoginEntity {
    private String login;
    private String password;
    private UserProfileEntity profile;
    private String email;
    private String role;

    public CustomerLoginEntity() {
    }

    public CustomerLoginEntity(String login, String password, UserProfileEntity profile, String email, String role) {
        this.login = login;
        this.password = password;
        this.email = email;
        this.profile = profile;
        this.role = role;
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

    @OneToOne
    @JoinColumn(name = "profile_id")
    public UserProfileEntity getProfile() {
        return profile;
    }

    public void setProfile(UserProfileEntity profile) {
        this.profile = profile;
    }

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "role")
    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}