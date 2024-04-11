package mvc_and_orm.services;

import java.util.List;

import org.springframework.stereotype.Service;

import mvc_and_orm.entities.Book;

@Service
public interface BookService {
	public int addBook(Book book);
	public List<Book> getAllBooks();
	public void deleteBookById(int bookId);
	public Book getBookById(int bookId);
	public void updateBook(Book book);
}
