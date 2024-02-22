package dao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dto.User;

public class UserRepository {
	private Map<String, User> users = new HashMap<>();
	
	private static final UserRepository instance = new UserRepository();
	
	public static UserRepository getInstance() {
		return instance;
	}
	
	private UserRepository() {
		
	}

    // 사용자 등록
    public void registerUser(String id, String password) {
        if (!users.containsKey(id)) {
            users.put(id, new User(id, password));
        }
    }

    // 사용자 정보 가져오기
    public User getUser(String id) {
        return users.get(id);
    }

    // 사용자 확인, 로그인시 사용
    public boolean checkUser(String id, String password) {
        User user = users.get(id);
        if (user != null && user.getPassword().equals(password)) {
            return true;
        }
        return false;
    }
    
    //해당 회원이 존재하는가, 회원가입시 사용
    public boolean checkUserExists(String id) {
        return users.containsKey(id);
    }
    
    public User findById(String id) {
    	return users.get(id);
    }
    
    public List<User> findAll(){
    	return new ArrayList<>(users.values());
    }

}
