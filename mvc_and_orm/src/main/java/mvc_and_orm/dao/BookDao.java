package mvc_and_orm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;


import mvc_and_orm.entities.Book;

@Repository
public class BookDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int addBook(Book book) {
		Integer i=(Integer) this.hibernateTemplate.save(book);
		return i;
	}
	
	public List<Book> getAllBooks(){
		List<Book> books= this.hibernateTemplate.loadAll(Book.class);
		return books;
	}
	@Transactional
	public void deleteBookById(int bookId) {
		Book book=this.hibernateTemplate.load(Book.class,bookId);
		this.hibernateTemplate.delete(book);
	}
	
	@Transactional
	public Book getBookById(int bookId) {
		Book book=this.hibernateTemplate.get(Book.class, bookId);
		return book;
	}
	
	@Transactional
	public void updateBook(Book book) {
		this.hibernateTemplate.update(book);
	}

}
