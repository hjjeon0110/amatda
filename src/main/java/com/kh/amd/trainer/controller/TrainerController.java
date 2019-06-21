package com.kh.amd.trainer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.amd.trainer.model.service.TrainerService;

@Controller
public class TrainerController {
	
	@Autowired
	private TrainerService ts;

}
