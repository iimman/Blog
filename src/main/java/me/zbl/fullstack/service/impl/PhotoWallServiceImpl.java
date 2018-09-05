package me.zbl.fullstack.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.page.Page;
import me.zbl.fullstack.mapper.PhotoMapper;
import me.zbl.fullstack.service.api.PhotoWallService;

@Service
public class PhotoWallServiceImpl implements PhotoWallService {
	
	
	@Autowired
	private PhotoMapper photoMapper;

	@Override
	public List<Photo> selectPhotoByPage(Page page) {
		PageHelper.startPage(page);
		List<Photo> list = photoMapper.selectAll();
		return list;
	}

	@Override
	public Photo selectPhotoById(int id) {
		Photo photo = photoMapper.selectByPrimaryKey(id);
		return photo;
	}

}
