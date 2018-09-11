package me.zbl.fullstack.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.Data;

@Data
public class Comment {

	@Id
	@Column(name = "comment_id")
	private Integer id;
	
	@Transient
	private Photo photo;
	
	@Transient
	private User user;
	
	@Column(name = "comment_content")
	private String content;
	
	@Column(name = "comment_time")
	private Date create;
	
	@Column(name = "comment_isreply")
	private Integer isReply = 0;
}
