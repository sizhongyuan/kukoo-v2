package com.kukoo.system.priv.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kukoo.system.priv.dao.TawSystemPrivMapper;
import com.kukoo.system.priv.model.TawSystemPriv;
import com.kukoo.system.priv.service.TawSystemPrivService;

@Service("tawSystemPrivService")
public class TawSystemPrivServiceImpl implements TawSystemPrivService {

	/**
	 * 注入tawSystemPrivMapper
	 */
	@Autowired
	private TawSystemPrivMapper tawSystemPrivMapper;
	
	@Override
	public TawSystemPriv queryTawSystemPrivByOperationId(String operationId) {
		return tawSystemPrivMapper.queryTawSystemPrivByOperationId(operationId);
	}

	@Override
	public void saveTawSystemPriv(TawSystemPriv tawSystemPriv) {
		tawSystemPrivMapper.saveTawSystemPriv(tawSystemPriv);
	}

	@Override
	public List<TawSystemPriv> queryTawSystem(String conditions) {
		return tawSystemPrivMapper.queryTawSystem(conditions);
	}

	@Override
	public void deleteTawSystemPriv(String operationId) {
		tawSystemPrivMapper.deleteTawSystemPriv(operationId);
	}

}
