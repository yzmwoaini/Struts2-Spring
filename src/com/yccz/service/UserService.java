package com.yccz.service;

import java.util.List;

import com.yccz.bean.User;

public interface UserService {

	public List<User> list();
	public boolean add(User user);
	public boolean delete(int id);
	public User query(int id);
	public boolean update(User user);
	public User listuser(int id);
}
