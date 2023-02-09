package com.mvc.blog.dto;

import java.sql.Date;

public class UserinfoDto {

	private int user_no;
	private String user_name;
	private String user_id;
	private String user_password;
	private Date user_birth;
	private String user_sex;
	private String user_telNum;
	private String user_PFP;

	public UserinfoDto() {
		// TODO Auto-generated constructor stub
	}

	public UserinfoDto(int user_no, String user_name, String user_id, String user_password, Date user_birth,
			String user_sex, String user_telNum, String user_PFP) {
		super();
		this.user_no = user_no;
		this.user_name = user_name;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_telNum = user_telNum;
		this.user_PFP = user_PFP;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public Date getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_telNum() {
		return user_telNum;
	}

	public void setUser_telNum(String user_telNum) {
		this.user_telNum = user_telNum;
	}

	public String getUser_PFP() {
		return user_PFP;
	}

	public void setUser_PFP(String user_PFP) {
		this.user_PFP = user_PFP;
	}

}
