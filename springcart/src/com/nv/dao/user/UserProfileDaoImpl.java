package com.nv.dao.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nv.dao.JdbcRepository;
import com.nv.dao.ad.AdDataMapper;
import com.nv.model.AdDataBean;
import com.nv.model.UserBean;

@Repository ("UserProfileDaoImpl")
@Transactional
public class UserProfileDaoImpl implements UserProfileDao {
	@Autowired
	JdbcRepository repo;	
    
	private String insertNewUser = "insert into User (User_Name,User_Email,User_Password,User_Mobile,User_Address,User_City,User_Pincode) values (?,?,?,?,?,?,?)";
	private String updateUser = "update Ad_Data";
	private String deleteUser = "delete from Ad_Data";
	private String readUser = "select User_Id,User_Name,User_Email,User_Password,User_Mobile,User_Address,User_City,User_Pincode from User where User_Email=?";
	
	
	@Override
	public int insertNewUser(UserBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(UserBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(UserBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserBean readUser(UserBean bean) {
		UserBean  li = (UserBean) repo.getJdbcTemplate().query(readUser, new UserProfileMapper());
		return li;
	}

}
