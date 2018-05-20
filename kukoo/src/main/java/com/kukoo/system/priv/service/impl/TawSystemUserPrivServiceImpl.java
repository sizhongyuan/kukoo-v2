package com.kukoo.system.priv.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.system.priv.dao.TawSystemUserPrivMapper;
import com.kukoo.system.priv.model.TawSystemUserPriv;
import com.kukoo.system.priv.service.TawSystemUserPrivService;

@Service("tawSystemUserPrivService")
public class TawSystemUserPrivServiceImpl implements TawSystemUserPrivService{
	
	/**
	 * 注入tawSystemPrivMapper
	 */
	@Autowired
	private TawSystemUserPrivMapper tawSystemUserPrivMapper;
	
	@Override
	public List<TawSystemUserPriv> queryByUserId(String conditions) {
		return tawSystemUserPrivMapper.queryByUserId(conditions);
	}

	@Override
	public void saveTawSystemUserPriv(TawSystemUserPriv tawSystemUserPriv) {
		tawSystemUserPrivMapper.saveTawSystemUserPriv(tawSystemUserPriv);
	}

	@Override
	public void deleteTawSystemUserPriv(int id) {
		tawSystemUserPrivMapper.deleteTawSystemUserPriv(id);
	}

}
