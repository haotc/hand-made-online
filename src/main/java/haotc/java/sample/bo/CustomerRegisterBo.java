package haotc.java.sample.bo;

public interface CustomerRegisterBo extends GenericBo {
	boolean register(String username, String email, String password);

    boolean save(String username, String email, String password, String role);
}
