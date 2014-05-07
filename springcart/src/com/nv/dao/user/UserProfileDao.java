package com.nv.dao.user;

import org.springframework.stereotype.Repository;

import com.nv.model.UserBean;

@Repository
public interface UserProfileDao {
	public int insertNewUser(UserBean bean);
	
	public int updateUser(UserBean bean);
	
	public int deleteUser(UserBean bean);
	
	public UserBean readUser(UserBean bean);

}
