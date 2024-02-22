package dto;

public class User {
	private String id;
    private String password;
    
    public User() {
    	
    }

    public User(String id, String password) {
        this.id = id;
        this.password = password;
    }

    // ID에 대한 getter
    public String getId() {
        return id;
    }

    // ID에 대한 setter
    public void setId(String id) {
        this.id = id;
    }

    // Password에 대한 getter
    public String getPassword() {
        return password;
    }

    // Password에 대한 setter
    public void setPassword(String password) {
        this.password = password;
    }

}
