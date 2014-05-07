package com.nv.dao.ad;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nv.model.AdDataBean;

public class AdDataMapper implements RowMapper<AdDataBean> {

	public AdDataBean mapRow(ResultSet rs, int i) throws SQLException {
		AdDataBean bean = new AdDataBean();
		bean.setId(rs.getInt("Ad_Id"));
		bean.setCategory(rs.getInt("Cat_Id"));
		bean.setGroup(rs.getInt("Grp_Id"));
		bean.setTitle(rs.getString("Ad_Title"));
		bean.setDetails(rs.getString("Ad_Details"));
		return bean;
	}
}
