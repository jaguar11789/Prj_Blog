package com.mvc.blog.dto;

import java.sql.Date;

public class Blog_BoardDto {

	private int blog_no;
	private String blog_writer;
	private int blog_num;
	private String blog_title;
	private String blog_content;
	private String blog_image;
	private Date blog_date;
	private int blog_hit;

	public Blog_BoardDto() {
		// TODO Auto-generated constructor stub
	}

	public Blog_BoardDto(int blog_no, String blog_writer, int blog_num, String blog_title, String blog_content,
			String blog_image, Date blog_date, int blog_hit) {
		super();
		this.blog_no = blog_no;
		this.blog_writer = blog_writer;
		this.blog_num = blog_num;
		this.blog_title = blog_title;
		this.blog_content = blog_content;
		this.blog_image = blog_image;
		this.blog_date = blog_date;
		this.blog_hit = blog_hit;
	}

	public int getBlog_no() {
		return blog_no;
	}

	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}

	public String getBlog_writer() {
		return blog_writer;
	}

	public void setBlog_writer(String blog_writer) {
		this.blog_writer = blog_writer;
	}

	public int getBlog_num() {
		return blog_num;
	}

	public void setBlog_num(int blog_num) {
		this.blog_num = blog_num;
	}

	public String getBlog_title() {
		return blog_title;
	}

	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}

	public String getBlog_content() {
		return blog_content;
	}

	public void setBlog_content(String blog_content) {
		this.blog_content = blog_content;
	}

	public String getBlog_image() {
		return blog_image;
	}

	public void setBlog_image(String blog_image) {
		this.blog_image = blog_image;
	}

	public Date getBlog_date() {
		return blog_date;
	}

	public void setBlog_date(Date blog_date) {
		this.blog_date = blog_date;
	}

	public int getBlog_hit() {
		return blog_hit;
	}

	public void setBlog_hit(int blog_hit) {
		this.blog_hit = blog_hit;
	}

}
