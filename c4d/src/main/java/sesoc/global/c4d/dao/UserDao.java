package sesoc.global.c4d.dao;

import sesoc.global.c4d.vo.User;

public interface UserDao {
	
	public User selectOne(User user);
	public int insert(User user);
	public int update(User user);
}
