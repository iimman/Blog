package me.zbl.fullstack.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;

import lombok.Data;

@Data
public class Reply {

	@Id
	@Column(name = "photo_id")
	private Integer id;
	
	private Comment comment;
	
	private AdminUser admin;
	
	private User user;
	
	@Column(name = "reply_content")
	private String description;
	
	@Column(name = "reply_time")
	private Date create;
}
