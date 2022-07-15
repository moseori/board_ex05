package me.light.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import me.light.model.BoardVO;
import me.light.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/list")
	public String getList(Model model) {
		List<BoardVO> readAll =service.readAll();
		model.addAttribute("list", readAll);
		System.out.println(readAll);
		return "board/list";
	}
	
	@GetMapping("/get")
	public String get(Long bno, Model model) {
		System.out.println(bno);
		model.addAttribute("board", service.read(bno));
		return "board/get";
	}

}
