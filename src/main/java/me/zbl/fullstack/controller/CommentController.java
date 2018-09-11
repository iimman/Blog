package me.zbl.fullstack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import me.zbl.fullstack.entity.AdminUser;
import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.Reply;
import me.zbl.fullstack.entity.User;
import me.zbl.fullstack.service.api.CommentService;
import me.zbl.fullstack.service.api.IAdminUserService;
import me.zbl.fullstack.service.api.IUserService;
import me.zbl.fullstack.utils.DateTimeHelper;


//@RequestMapping(value = "/comment")
@Controller
public class CommentController {
	
	@Autowired
	private CommentService CommentService;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IAdminUserService adminUserService;
	
	//照片添加一条评论
	@RequestMapping(value = "/addComment")
	public String addComment(HttpServletRequest request, int userId, int photoId, String commentContent){
	
		System.out.println("userId:" + userId + "photoId:" + photoId);
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
	
	//添加一条回复
	@RequestMapping(value = "/addreply")
	public String addReply(int commentId,int adminId,int userId,String replyContent,int photoId){
		Reply reply = new Reply();
		Comment comment = CommentService.getCommentById(commentId);
		User user = userService.getUserById(userId);
		AdminUser adminUser = adminUserService.getAdminUserById(adminId);
		reply.setAdmin(adminUser);
		reply.setUser(user);
		reply.setComment(comment);
		reply.setCreate(DateTimeHelper.getNowTime());
		reply.setDescription(replyContent);
		CommentService.addReply(reply);
		return "redirect:/single?id="+photoId;
	}

}
