package com.mvc.blog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.blog.dto.Blog_BoardDto;
import com.mvc.blog.service.BlogService;

@Controller
public class BlogController {

	private static final Logger Logger = LoggerFactory.getLogger(BlogController.class);

	@Autowired
	private BlogService blogservice;

	@RequestMapping("/blog_main")
	public String blogmain(Model model) {
		Logger.info("MAIN PAGE");

		model.addAttribute("list", blogservice.selectList());
		return "blog_main";
	}

	@RequestMapping("/one.do")
	public String blogDetail(Model model, int blog_no) {

		Logger.info("SELECT ONE");

		model.addAttribute("dto", blogservice.selectOne(blog_no));

		return "blog_detailpage";
	}

	@RequestMapping("/blog_writeboard")
	public String writeboard() {

		Logger.info("BOARD WRITE");

		return "blog_writeboard";
	}

	@RequestMapping("/boardwrite.do")
	public String boardWrite(Blog_BoardDto blogdto) {

		int res = blogservice.boardWrite(blogdto);

		if (res > 0) {
			return "redirect:blog_main";
		} else {
			return "redirect:blog_writeboard";
		}
	}

	@RequestMapping("/blog_userlogin")
	public String userlogin() {

		return "blog_userlogin";
	}

	@RequestMapping("/blog_userjoin")
	public String userjoin() {

		return "blog_userjoin";
	}

	@RequestMapping("/modifyboard.do") // 수정 페이지 매핑
	public String modify_board(Model model, int blog_no) {

		Logger.info("MODIFY PAGE");

		model.addAttribute("dto", blogservice.selectOne(blog_no));

		return "blog_modifyboard";
	}

	@RequestMapping("/boardmodify.do")
	public String boardModify(Blog_BoardDto blogdto) {

		Logger.info("BOARD MODIFY");

		int res = blogservice.boardUpdate(blogdto);

		if (res > 0) {
			return "redirect:one.do?blog_no=" + blogdto.getBlog_no();
		} else {
			return "redirect:modifyboard.do?blog_no=" + blogdto.getBlog_no();
		}
	}

	@RequestMapping("/blog_modifyuserinfo")
	public String modify_userinfo() {

		return "blog_modifyuserinfo";
	}

	@RequestMapping("/blog_joinsuccess")
	public String join_seccess() {

		return "blog_joinsuccess";
	}
}
