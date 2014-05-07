/**
 * 
 */
package com.nv.service.ad;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nv.dao.ad.AdDataDao;
import com.nv.model.AdDataBean;

/**
 * @author gkgupta
 *
 */
@Service
@Transactional
public class AdDataServiceImpl implements AdDataService {
	@Autowired
	AdDataDao adDataDao;

	/* (non-Javadoc)
	 * @see com.nv.service.ad.AdDataService#insertNewAd(com.nv.model.AdDataBean)
	 */
	@Override
	public int insertNewAd(AdDataBean bean) {		
		return adDataDao.insertNewAd(bean);
	}

	/* (non-Javadoc)
	 * @see com.nv.service.ad.AdDataService#updateAd(com.nv.model.AdDataBean)
	 */
	@Override
	public int updateAd(AdDataBean bean) {
		return adDataDao.updateAd(bean);
	}

	/* (non-Javadoc)
	 * @see com.nv.service.ad.AdDataService#deleteAd(com.nv.model.AdDataBean)
	 */
	@Override
	public int deleteAd(AdDataBean bean) {
		return adDataDao.deleteAd(bean);
	}

	/* (non-Javadoc)
	 * @see com.nv.service.ad.AdDataService#readAd()
	 */
	@Override
	public List<AdDataBean> readAd() {
		return adDataDao.readAd();
	}

}
