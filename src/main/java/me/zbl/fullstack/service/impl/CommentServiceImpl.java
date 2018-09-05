package me.zbl.fullstack.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.mapper.CommentMapper;
import me.zbl.fullstack.service.api.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;

	@Override
	public void addComment(Comment comment) {
		
		commentMapper.addComment(comment);
		
	}

	@Override
	public List<Comment> getAllCommentById(int id) {
		
		return commentMapper.getAllCommentById(id);
		
	}

}
