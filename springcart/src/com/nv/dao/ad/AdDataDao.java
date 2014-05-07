package com.nv.dao.ad;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nv.model.AdDataBean;

@Repository
public interface AdDataDao {
	public int insertNewAd(AdDataBean bean);
	
	public int updateAd(AdDataBean bean);
	
	public int deleteAd(AdDataBean bean);
	
	public List<AdDataBean> readAd();

}
