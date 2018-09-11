package me.zbl.fullstack.service.api;

import java.util.List;

import me.zbl.fullstack.entity.Comment;
import me.zbl.fullstack.entity.Reply;

public interface CommentService {

	void addComment(Comment comment);

	List<Comment> getAllCommentById(int id);

	Comment getCommentById(int commentId);

	void addReply(Reply reply);

	Reply getReplyByCommentId(Integer id);

}
