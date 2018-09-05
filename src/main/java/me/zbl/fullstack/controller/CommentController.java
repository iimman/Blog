package me.zbl.fullstack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.User;
import me.zbl.fullstack.service.api.CommentService;
import me.zbl.fullstack.utils.DateTimeHelper;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService CommentService;
	//照片添加一条评论
	@RequestMapping(value = "/addComment")
	public String addComment(HttpServletRequest request, Model model, int userId, int photoId, String commentContent){
	
		System.out.println("userId:" + userId + "           photoId:" + photoId);
		System.out.println("commentContent:" + commentContent);
		
		Comment comment = new Comment();
		Photo photo = new Photo();
		photo.setId(photoId);
		User user = new User();
		user.setId(userId);
		
		comment.setPhoto(photo);
		comment.setUser(user);
		comment.setContent(commentContent);
		comment.setCreate(DateTimeHelper.getNowTime());
		
		CommentService.addComment(comment);
		
		return "/single?id="+photoId;
	}

}
