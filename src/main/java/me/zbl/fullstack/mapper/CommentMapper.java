package me.zbl.fullstack.mapper;

import java.util.List;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.framework.mapper.IMyMapper;

public interface CommentMapper  extends IMyMapper<Comment>{

	void addComment(Comment comment);

	List<Comment> getAllCommentById(int id);

}
