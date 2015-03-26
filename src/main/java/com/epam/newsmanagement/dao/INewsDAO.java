package com.epam.newsmanagement.dao;

import java.util.ArrayList;

import com.epam.newsmanagement.entity.News;
import com.epam.newsmanagement.exception.DAOException;

/**
 * INewsDAO --- interface which defines methods for access to entities stored in
 * table News
 * 
 * @author Marharyta_Amelyanchuk
 */
public interface INewsDAO {

	/**
	 * Gets all the news from table News
	 * 
	 * @return ArrayList of News
	 * @exception DAOException
	 *                if some problems occur with dao
	 */
	public ArrayList<News> getList() throws DAOException;

	/**
	 * Insert new news or update existing in table News
	 * 
	 * @param object
	 *            The News object to insert
	 * @return News
	 * @exception DAOException
	 *                if some problems occur with dao
	 */
	public News save(News object) throws DAOException;

	/**
	 * Delete in table News lines by their id numbers
	 * 
	 * @param ids
	 *            Array of news id numbers to delete in database
	 * @return void
	 * @exception DAOException
	 *                if some problems occur with dao
	 */
	public void remove(Integer[] id) throws DAOException;

	/**
	 * Select news by id from table News and stores his data in News object
	 * 
	 * @param id
	 *            The id of news to get from table News
	 * @return News
	 * @exception DAOException
	 *                if some problems occur with dao
	 */
	public News fetchById(int id) throws DAOException;

}
