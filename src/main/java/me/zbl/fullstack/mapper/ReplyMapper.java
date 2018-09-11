package me.zbl.fullstack.mapper;

import me.zbl.fullstack.entity.Reply;
import me.zbl.fullstack.framework.mapper.IMyMapper;

public interface ReplyMapper extends IMyMapper<Reply>{

	void addReply(Reply reply);

	Reply getReplyByCommentId(Integer id);

}
