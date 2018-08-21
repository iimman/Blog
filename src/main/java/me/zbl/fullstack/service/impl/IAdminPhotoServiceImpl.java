package me.zbl.fullstack.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.mapper.PhotoMapper;
import me.zbl.fullstack.service.api.IAdminPhotoService;


@Service
public class IAdminPhotoServiceImpl implements IAdminPhotoService{
	
	
	@Autowired
	private PhotoMapper photoMapper;

	@Override
	public List<Photo> getAdminPhotoJson() {
		List<Photo> list = photoMapper.selectAll();
		return list;
	}

}
