package com.epam.newsmanagement.entity;

import java.util.ArrayList;
import java.util.List;

public class ComplexNews {
	private News news;
	private Author author;
	private List<Tag> tagList;
	private List<Comment> commentsList;

	public ComplexNews() {
		news = new News();
		author = new Author();
		tagList = new ArrayList<Tag>();
		commentsList = new ArrayList<Comment>();
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public List<Tag> getTagList() {
		return tagList;
	}

	public void setTagList(List<Tag> tagList) {
		this.tagList = tagList;
	}

	public List<Comment> getCommentsList() {
		return commentsList;
	}

	public void setCommentsList(List<Comment> commentsList) {
		this.commentsList = commentsList;
	}

	public void addComment(Comment comment) {
		commentsList.add(comment);
	}

	public void removeComment(Comment comment) {
		commentsList.remove(comment);
	}

	public void addTag(Tag tag) {
		tagList.add(tag);
	}

	public void removeTag(Tag tag) {
		tagList.remove(tag);
	}

}
