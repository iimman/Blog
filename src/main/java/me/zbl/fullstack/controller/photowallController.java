package me.zbl.fullstack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yaml.snakeyaml.constructor.BaseConstructor;

@Controller
public class photowallController extends BaseConstructor{

	
	@RequestMapping(value = "/photo")
	public String photoIndex(HttpServletRequest request, Model model){
		
		model.addAttribute("test", "test123");
		return "photo";
	}	
}
