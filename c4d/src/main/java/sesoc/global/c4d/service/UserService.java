package sesoc.global.c4d.service;

import sesoc.global.c4d.vo.User;

public interface UserService {

	public User selectOne(User user);
	
	public int join(User user);
	
	public int update(User user);
}
