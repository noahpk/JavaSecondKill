package com.miaosha.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miaosha.dao.UserDao;
import com.miaosha.domain.User;

@Service
public class UserService {
	
	@Autowired
	UserDao userDao;
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}
	public int createUser(User user) {
		return userDao.createUser(user);
	}
}
