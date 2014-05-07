package com.nv.dao.group;

import java.util.List;

import com.nv.model.GroupBean;

public interface GroupDao {

	public int createGroup(GroupBean cbean);

	public int updateGroup(GroupBean cbean);

	public int deleteGroup(GroupBean cbean);

	public List<GroupBean> selectGroup();

}
