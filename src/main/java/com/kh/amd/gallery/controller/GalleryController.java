package com.kh.amd.gallery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GalleryController {
	
	@RequestMapping("selectGallery.ga")
	public String selectGallery() {
		
		return "gallery/selectGallery";
		
	}

}
