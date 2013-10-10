package haotc.java.sample.model;

/**
 * Created by IntelliJ IDEA.
 * User: HaoTC
 * Date: 9/23/13
 * Time: 7:48 PM
 * To change this template use File | Settings | File Templates.
 */
public class CustomerRegisterForm {
    private String username;
    private String email;
    private String password;
    private String confirmPassword;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
