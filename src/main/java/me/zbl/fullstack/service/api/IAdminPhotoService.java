package me.zbl.fullstack.service.api;

import java.util.List;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.dto.request.TableKeyModel;

public interface IAdminPhotoService {

	List<Photo> getAdminPhotoJson();

	void adminAddPhoto(Photo photo);

	void adminUpdatePhoto(Photo photo);

	void AdminDeletePhoto(TableKeyModel model);

}
