package com.epam.newsmanagement.exception;

/**
 * DAOException --- class exception which is thrown when some
 * problems occurs in DAO layer
 * 
 * @author Marharyta_Amelyanchuk
 */
public class DAOException extends Exception {

	private static final long serialVersionUID = -1121832062525444680L;

	public DAOException() {
	}

	public DAOException(String message) {
		super(message);
	}

	public DAOException(String message, Exception cause) {
		super(message, cause);
	}

	public DAOException(Throwable cause) {
		super(cause);
	}
}