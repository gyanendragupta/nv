package com.nv.service.ad;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nv.model.AdDataBean;

@Service
public interface AdDataService {
	
	public int insertNewAd(AdDataBean bean);
	
	public int updateAd(AdDataBean bean);
	
	public int deleteAd(AdDataBean bean);
	
	public List<AdDataBean> readAd();
}
