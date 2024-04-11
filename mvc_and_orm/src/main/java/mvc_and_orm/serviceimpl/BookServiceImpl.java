package mvc_and_orm.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc_and_orm.dao.BookDao;
import mvc_and_orm.entities.Book;
import mvc_and_orm.services.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;

	@Override
	public int addBook(Book book) {
		return bookDao.addBook(book);
	}

	@Override
	public List<Book> getAllBooks() {
		
		return bookDao.getAllBooks();
	}

	@Override
	public void deleteBookById(int bookId) {
		bookDao.deleteBookById(bookId);
		
	}

	@Override
	public Book getBookById(int bookId) {
		
		return bookDao.getBookById(bookId);
	}

	@Override
	public void updateBook(Book book) {
		bookDao.updateBook(book);
		
	}

}
