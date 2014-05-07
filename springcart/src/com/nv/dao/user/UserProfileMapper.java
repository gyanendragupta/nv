package com.nv.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nv.model.UserBean;

public class UserProfileMapper implements RowMapper<UserBean> {

	public UserBean mapRow(ResultSet rs, int i) throws SQLException {
		UserBean bean = new UserBean();
		
		bean.setUser_Id(rs.getInt("User_Id"));
		bean.setUser_Name(rs.getString("User_Name"));
		bean.setUser_Email(rs.getString("User_Email"));
		bean.setUser_Password(rs.getString("User_Password"));
		bean.setUser_Mobile(rs.getInt("User_Mobile"));
		bean.setUser_Address(rs.getString("User_Address"));
		bean.setUser_City(rs.getString("User_City"));
		bean.setUser_Pincode(rs.getInt("User_Pincode"));
		return bean;
	}
}
