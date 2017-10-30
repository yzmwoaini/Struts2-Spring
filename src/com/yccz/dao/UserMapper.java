package com.yccz.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.yccz.bean.User;
@Repository
public interface UserMapper {
	public int add(User user);
	public int delete(int id);
	public User query(int id);
	public int update(User user);
	public List<User> list();
	public User listuser(int id);
}
