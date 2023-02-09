package com.mvc.blog.service;

import java.util.List;

import com.mvc.blog.dto.Blog_BoardDto;

public interface BlogService {

	public List<Blog_BoardDto> selectList();
	
	public Blog_BoardDto selectOne(int blog_no);
	
	public int boardWrite(Blog_BoardDto blogdto);
	
	public int boardUpdate(Blog_BoardDto blogdto);
	
	public int boardDelete(int blog_no);
}
