package me.zbl.fullstack.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yaml.snakeyaml.constructor.BaseConstructor;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.Reply;
import me.zbl.fullstack.entity.page.Page;
import me.zbl.fullstack.entity.page.PageInfo;
import me.zbl.fullstack.service.api.CommentService;
import me.zbl.fullstack.service.api.PhotoWallService;


@Controller
public class PhotoWallController extends BaseConstructor{

	
	@Autowired
	private PhotoWallService photoWallService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private CommentService commentSeriver;
	
	//跳转photo页面
	@RequestMapping(value = "/photo")
	public String photoIndex(HttpServletRequest request, Model model, Page page){
		List<Photo> photoList = photoWallService.selectPhotoByPage(page);
		
		
		PageInfo<Photo> pageInfo = new PageInfo<Photo>(photoList);
		
		model.addAttribute("pageInfo", pageInfo);
		
		return "photo";
	}
	
	//分页查询photo
	@RequestMapping(value = "/photoJsonList")
	@ResponseBody
	public PageInfo<Photo> photoJsonList(HttpServletRequest request, Page page){
		List<Photo> photoList = photoWallService.selectPhotoByPage(page);
		
		PageInfo<Photo> pageInfo = new PageInfo<Photo>(photoList);
		
		return pageInfo;
	}
	
	//根据id查询
	@RequestMapping(value = "/single")
	public String singlePhotoInfo(HttpServletRequest request, Model model, int id){
		
		List<Reply> replyList = new ArrayList<Reply>();
		
		Photo photo = photoWallService.selectPhotoById(id);
		
		List<Comment> commentList = commentService.getAllCommentById(id);
		
		for (Comment comment : commentList) {
			Reply reply = commentSeriver.getReplyByCommentId(comment.getId());
			if(null != reply){
				replyList.add(reply);
			}
		}
		
		model.addAttribute("replyList", replyList);
		
		model.addAttribute("photo", photo);
		
		model.addAttribute("commentList", commentList);
		
		return "single";
	}
	
}
