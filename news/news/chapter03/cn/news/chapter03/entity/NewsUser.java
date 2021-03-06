package cn.news.chapter03.entity;

import java.io.Serializable;

public class NewsUser implements Serializable {
	private int uid;
	private String uname;
	private String upwd;

	public NewsUser( String uname, String upwd) {
		this.uname = uname;
		this.upwd = upwd;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
}
