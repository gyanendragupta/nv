package com.nv.dao.ad;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nv.dao.JdbcRepository;
import com.nv.model.AdDataBean;

@Repository ("AdDataDaoImpl")
@Transactional
public class AdDataDaoImpl implements AdDataDao {
	@Autowired
	JdbcRepository repo;
	
	private String insertAd = "insert into Ad_Data (Cat_Id, Grp_Id, Ad_Title, Ad_Details) values (?,?,?,?)";
	private String updateAd = "update Ad_Data";
	private String deleteAd = "delete from Ad_Data";
	private String readAds = "select AD_ID, Cat_id, Grp_id, Ad_title, Ad_details from Ad_Data order by AD_id desc";
	
    @Override
	public int insertNewAd(AdDataBean bean) {
		int result = repo.getJdbcTemplate().update(insertAd, 
				bean.getCategory(), 
				bean.getGroup(), 
				bean.getTitle(), 
				bean.getDetails());
		return result;
	}

	@Override
	public int updateAd(AdDataBean bean) {		
		return 0;
	}

	@Override
	public int deleteAd(AdDataBean bean) {
		return 0;
	}

	@Override
	public List<AdDataBean> readAd() {
		List<AdDataBean>  li = repo.getJdbcTemplate().query(readAds, new AdDataMapper());
		return li;
	}

}
