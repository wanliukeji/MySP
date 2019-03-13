package com.example.demo.service.impl;
 
import java.io.Serializable;
import java.util.List;

import com.example.demo.dao.UserMapper;
import com.example.demo.dao.UserRepository;
import com.example.demo.dao.impl.UserDao;
import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserServiceimpl implements UserService,Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserRepository userMapper;

	public List getUsers(int id) {
		// TODO Auto-generated method stub
		List<User> users = userMapper.findAll();
		return users;
	}

	@Override
	public User getById(int id) {
		User user = userMapper.getOne(id);
		return user;
	}
}
