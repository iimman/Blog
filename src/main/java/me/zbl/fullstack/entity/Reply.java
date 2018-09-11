package me.zbl.fullstack.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.Data;

@Data
public class Reply {

	@Id
	@Column(name = "photo_id")
	private Integer id;
	
	@Transient
	private Comment comment;
	
	@Transient
	private AdminUser admin;
	
	@Transient
	private User user;
	
	@Column(name = "reply_content")
	private String description;
	
	@Column(name = "reply_time")
	private Date create;
}
