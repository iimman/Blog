package me.zbl.fullstack.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yaml.snakeyaml.constructor.BaseConstructor;

import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.page.Page;
import me.zbl.fullstack.entity.page.PageInfo;
import me.zbl.fullstack.service.impl.PhotoWallServiceImpl;


@Controller
public class photoWallController extends BaseConstructor{

	
	@Autowired
	private PhotoWallServiceImpl photoWallService;
	
	@RequestMapping(value = "/photo")
	public String photoIndex(HttpServletRequest request, Model model, Page page){
		List<Photo> photoList = photoWallService.selectPhotoByPage(page);
		
		PageInfo<Photo> pageInfo = new PageInfo<Photo>(photoList);
		
		model.addAttribute("pageInfo", pageInfo);
		return "photo";
	}	
}
