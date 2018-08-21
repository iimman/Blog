package me.zbl.fullstack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class photowallController {

	
	@RequestMapping(value = "/photo")
	public String photoIndex(HttpServletRequest request, Model model){
		return "photo";
	}
}
