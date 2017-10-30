package com.yccz.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yccz.bean.User;
import com.yccz.service.UserService;


public class UserAction extends ActionSupport{


	/**
	 * 
	 */
	private Logger logger = Logger.getLogger(UserAction.class);
	private static final long serialVersionUID = 4032245704681491414L;

	
	
	private UserService Service;
	private User user;
//	UserService userServiceImpl=new UserServiceImpl();
	private List<User> 	list;
	public List<User> getList() {
		return list;
	}	
	public void setList(List<User> list) {
		this.list = list;
	}
	//从数据库中获得所有用户信息，赋值给list属性
	public String index() throws Exception{
		
		list=Service.list();
		return "index";
	}
     public String userDelete() throws Exception{
		
    	 System.out.println("dsafdsa"+user.getId());
		boolean flag=Service.delete(user.getId());
		if(flag) {
			return "success";
		}
		else {
			ActionContext actionContext = ActionContext.getContext();
			actionContext.put("tip", "删除失败");
			return "error";
		}
		
	}
   public String addUser() throws Exception{
    	 
		return "addUser";
 		}
     
     public String userAdd() throws Exception{
    	
    	 if(Service.add(user)) {
    		 return "success";
    	 }
    	 else {
    		ActionContext actionContext = ActionContext.getContext();
    		actionContext.put("tip", "添加失败");
    		 return "error";
    	 }
		
    	 
     }
 		public String userToUpdate() {
 			user=Service.listuser(user.getId());
 			return "toUpdate";
 			
 		}
 		
 		public String userUpdate() {
 			if(Service.update(user)) {
 				 return "success";
 			}
 			return "error"+"?user.id="+user.getId();
 			
 		}
 	
	
	
	
	
	
	
 	private String[] sexs=new String[]{"男","女"};
 	public String[] getSexs() {
 		return sexs;
 	}
 	public void setSexs(String[] sexs) {
 		this.sexs = sexs;
 	}
	
	
	
	
	
	public UserService getService() {
		return Service;
	}
	public void setService(UserService service) {
		Service = service;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}


	
}
