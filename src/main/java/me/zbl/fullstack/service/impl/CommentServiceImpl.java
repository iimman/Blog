package me.zbl.fullstack.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.entity.Reply;
import me.zbl.fullstack.entity.User;
import me.zbl.fullstack.mapper.CommentMapper;
import me.zbl.fullstack.mapper.ReplyMapper;
import me.zbl.fullstack.service.api.CommentService;
import me.zbl.fullstack.service.api.IAdminUserService;
import me.zbl.fullstack.service.api.IUserService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;
	
	@Autowired
	private ReplyMapper replyMapper;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IAdminUserService adminUserService;
	
	@Override
	public void addComment(Comment comment) {
		
		commentMapper.addComment(comment);
		
	}

	@Override
	public List<Comment> getAllCommentById(int id) {
		List<Comment> commentList = commentMapper.getAllCommentById(id);
		
		for (Comment comment : commentList) {
			User user = userService.getUserById(comment.getUser().getId());
			comment.setUser(user);
		}
		
		return commentList;
		
	}

	@Override
	public Comment getCommentById(int commentId) {
		Comment comment = commentMapper.selectByPrimaryKey(commentId);
		return comment;
	}

	@Override
	public void addReply(Reply reply) {
		replyMapper.addReply(reply);
		//修改评论为已回复1
		reply.getComment().setIsReply(1);
		commentMapper.updateByPrimaryKeySelective(reply.getComment());
	}

	@Override
	public Reply getReplyByCommentId(Integer id) {
		Reply reply = replyMapper.getReplyByCommentId(id);
		if(null != reply){
			reply.setUser(userService.getUserById(reply.getUser().getId()));
			reply.setAdmin(adminUserService.getAdminUserById(reply.getAdmin().getId()));
		}
		return reply;
	}

}
