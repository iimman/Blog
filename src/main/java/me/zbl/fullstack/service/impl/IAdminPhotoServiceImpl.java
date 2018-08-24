package me.zbl.fullstack.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.dto.request.TableKeyModel;
import me.zbl.fullstack.mapper.PhotoMapper;
import me.zbl.fullstack.service.api.IAdminPhotoService;
import me.zbl.fullstack.utils.DateTimeHelper;


@Service
public class IAdminPhotoServiceImpl implements IAdminPhotoService{
	
	
	@Autowired
	private PhotoMapper photoMapper;

	@Override
	public List<Photo> getAdminPhotoJson() {
		List<Photo> list = photoMapper.selectAll();
		return list;
	}

	@Override
	public void adminAddPhoto(Photo photo) {
		photoMapper.insert(photo);
	}

	@Override
	public void adminUpdatePhoto(Photo photo) {
		photo.setModified(DateTimeHelper.getNowTime());
		photoMapper.updateByPrimaryKeySelective(photo);
	}

	@Override
	public void AdminDeletePhoto(TableKeyModel model) {
	    for (Integer id : model.getIds()) {
	    	photoMapper.deleteByPrimaryKey(id);
	      }
	}
}
