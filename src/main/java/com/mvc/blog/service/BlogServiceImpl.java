package com.mvc.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.blog.dao.BlogDao;
import com.mvc.blog.dto.Blog_BoardDto;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDao blogdao;

	@Override
	public List<Blog_BoardDto> selectList() {
		
		return blogdao.selectList();
	}

	@Override
	public Blog_BoardDto selectOne(int blog_no) {

		
		
		return blogdao.selectOne(blog_no);
	}

	@Override
	public int boardWrite(Blog_BoardDto blogdto) {
		
		return blogdao.boardWrite(blogdto);
	}

	@Override
	public int boardUpdate(Blog_BoardDto blogdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardDelete(int blog_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
