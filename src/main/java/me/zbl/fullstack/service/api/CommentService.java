package me.zbl.fullstack.service.api;

import java.util.List;

import me.zbl.fullstack.entity.Comment;

public interface CommentService {

	void addComment(Comment comment);

	List<Comment> getAllCommentById(int id);

}
