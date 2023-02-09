package com.mvc.blog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mvc.blog.dto.Blog_BoardDto;

@Mapper
public interface BlogDao {

	String NAMEPACE = "com.mvc.blog.dao.BlogDao.";

	public List<Blog_BoardDto> selectList();

	public Blog_BoardDto selectOne(int blog_no);

	public int boardWrite(Blog_BoardDto blogdto);

	public int boardUpdate(Blog_BoardDto blogdto);

	public int boardDelete(int blog_no);

}
