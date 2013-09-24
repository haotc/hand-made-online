package haotc.java.sample.bo;

public interface CustomerRegisterBo extends GenericBo {
	boolean register(String username, String email, String password);
}
