package me.zbl.fullstack.service.api;

import java.util.List;

import me.zbl.fullstack.entity.Photo;

public interface IAdminPhotoService {

	List<Photo> getAdminPhotoJson();

	void adminAddPhoto(Photo photo);

}
