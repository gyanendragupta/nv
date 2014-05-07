package com.nv.service.user;

import org.springframework.stereotype.Service;

import com.nv.model.UserBean;

@Service
public interface UserProfileService {
	public int insertNewUser(UserBean bean);
	
	public int updateUser(UserBean bean);
	
	public int deleteUser(UserBean bean);
	
	public UserBean readUser(UserBean bean);
}
