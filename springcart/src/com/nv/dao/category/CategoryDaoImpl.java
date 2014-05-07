package com.nv.dao.category;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.nv.model.CategoryBean;

public class CategoryDaoImpl implements CategoryDao {
	JdbcTemplate temp;
	@Override
	public int createCategory(CategoryBean cbean) {
		//temp = JdbcRepository.getJdbcTemplate();
		return temp.update("insert into Category (Cat_Desc) where values (?)", cbean.getCat_desc());
		
		
	}

	@Override
	public int updateCategory(CategoryBean cbean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCategory(CategoryBean cbean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CategoryBean> selectCategory() {
		// TODO Auto-generated method stub
		return null;
	}

}
