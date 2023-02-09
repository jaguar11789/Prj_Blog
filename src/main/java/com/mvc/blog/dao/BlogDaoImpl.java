package com.mvc.blog.dao;

import java.util.ArrayList;
import java.util.List;

import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.blog.dto.Blog_BoardDto;

@Repository
public class BlogDaoImpl implements BlogDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Blog_BoardDto> selectList() {

		List<Blog_BoardDto> list = new ArrayList<Blog_BoardDto>();

		try {
			list = sqlSession.selectList(NAMEPACE + "selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;// service가 받아 controller로 리턴 넘김
	}

	@Override
	public Blog_BoardDto selectOne(int blog_no) {

		Blog_BoardDto blogdto = null;

		try {
			blogdto = sqlSession.selectOne(NAMEPACE + "selectOne", blog_no);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return blogdto;
	}

	@Override
	public int boardWrite(Blog_BoardDto blogdto) {

		int res = 0;

		try {
			res = sqlSession.insert(NAMEPACE + "boardWrite", blogdto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
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
