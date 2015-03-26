package com.epam.newsmanagement.entity;

import java.sql.Timestamp;

public class Author {
	private int auhtorId;
	private String auhtorName;
	private Timestamp expired;

	public int getAuhtorId() {
		return auhtorId;
	}

	public void setAuhtorId(int auhtorId) {
		this.auhtorId = auhtorId;
	}

	public String getAuhtorName() {
		return auhtorName;
	}

	public void setAuhtorName(String auhtorName) {
		this.auhtorName = auhtorName;
	}

	public Timestamp getExpired() {
		return expired;
	}

	public void setExpired(Timestamp expired) {
		this.expired = expired;
	}

}
