package com.yccz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yccz.bean.User;
import com.yccz.dao.UserMapper;
import com.yccz.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper usermapper;
	@Override
	public boolean add(User user) {
		boolean flag=false;
		if(usermapper.add(user)==1) {
			flag=true;
		}
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag=false;
		if(usermapper.delete(id)==1) {
			flag=true;
		}
		return flag;
	}

	@Override
	public User query(int id) {
		
		return usermapper.query(id);
	}

	@Override
	public boolean update(User user) {
		boolean flag=false;
		if(usermapper.update(user)==1) {
			flag=true;
		}
		return flag;
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return usermapper.list();
	}

	@Override
	public User listuser(int id) {
		// TODO Auto-generated method stub
		return usermapper.listuser(id);
	}

	

}
