package com.sample;

import java.util.Date;

public class Comment {

	Date date;
	String name;
	String content;

	public Comment(Date date, String name, String content) {
		super();
		this.date = date;
		this.name = name;
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public String getName() {
		return name;
	}

	public String getContent() {
		return content;
	}

}
