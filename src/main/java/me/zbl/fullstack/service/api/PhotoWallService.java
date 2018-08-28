package me.zbl.fullstack.service.api;

import java.util.List;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.page.Page;

public interface PhotoWallService {
	
	
	public List<Photo> selectPhotoByPage(Page page);

}
