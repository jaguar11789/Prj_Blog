package com.mvc.blog.dto;

import java.sql.Date;

public class Board_replyDto {

	private int reply_no;
	private int reply_blog_no;
	private String reply_content;
	private Date reply_date;

	public Board_replyDto() {
		// TODO Auto-generated constructor stub
	}

	public Board_replyDto(int reply_no, int reply_blog_no, String reply_content, Date reply_date) {
		super();
		this.reply_no = reply_no;
		this.reply_blog_no = reply_blog_no;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
	}

	public int getReply_no() {
		return reply_no;
	}

	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}

	public int getReply_blog_no() {
		return reply_blog_no;
	}

	public void setReply_blog_no(int reply_blog_no) {
		this.reply_blog_no = reply_blog_no;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

}
