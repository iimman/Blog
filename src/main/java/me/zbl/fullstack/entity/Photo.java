package me.zbl.fullstack.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Table(name = "photo")
public class Photo {
	
	@Id
	@Column(name = "photo_id")
	private Integer id;
	
	@Column(name = "photo_name")
	private String name;
	
	@Column(name = "photo_address")
	private String address;
	
	@Column(name = "photo_title")
	private String title;
	
	@Column(name = "photo_description")
	private String description;
	
	@Column(name = "photo_create")
	private Date create;
	
	@Column(name = "photo_modified")
	private Date modified;

}
