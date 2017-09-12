package sesoc.global.c4d.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sesoc.global.c4d.dao.UserRepository;
import sesoc.global.c4d.vo.User;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepository repo;
	
	@Override
	public User selectOne(User user) {
		
		User result = repo.selectOne(user);
		
		return result;
	}

	@Override
	public int join(User user) {
		
		int result = repo.insert(user);
		
		return result;
	}

	@Override
	public int update(User user) {
		
		int result = repo.update(user);
		
		return result;
	}
	
	
}
