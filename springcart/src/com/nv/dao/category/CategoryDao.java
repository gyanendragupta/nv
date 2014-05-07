package com.nv.dao.category;

import java.util.List;

import com.nv.model.CategoryBean;

public interface CategoryDao {
	public int createCategory (CategoryBean cbean);
	
	public int updateCategory (CategoryBean cbean);
	
	public int deleteCategory (CategoryBean cbean);
	
	public List<CategoryBean> selectCategory();
}
