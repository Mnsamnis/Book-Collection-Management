package mvc_and_orm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import mvc_and_orm.entities.Book;
import mvc_and_orm.serviceimpl.BookServiceImpl;

@Controller
public class BookController {
	@Autowired
	private BookServiceImpl bookServiceImpl;
	 @RequestMapping("/")
	    public RedirectView redirectToHomePage() {
	        return new RedirectView("/mvc_and_orm/home");
	    }
	
	@RequestMapping("/home")
	public String homePage() {
		return "index";
	}
	
	@GetMapping("/add_book")
	public String addBook() {
		return "addBook";
	}
	
	@PostMapping("/book_added")
	public String handleBookSubmit(@ModelAttribute Book book, Model model) {
		System.out.println("Book Added "+ book +" model: "+model);
		this.bookServiceImpl.addBook(book);
		return "bookAdded";
	}
	
	@GetMapping("/view_all")
	public ModelAndView viewAllBooks() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("all_books");
		List<Book> books=this.bookServiceImpl.getAllBooks();
		mv.addObject("books", books);
		return mv;
	}
	
	@PostMapping("/delete_book")
    public String deleteBook(@RequestParam("bookId") int bookId, RedirectAttributes redirectAttributes) {
        // Call the service method to delete the book
        this.bookServiceImpl.deleteBookById(bookId);
        redirectAttributes.addAttribute("success", "true");
        // Redirect to the page displaying all books
        return "redirect:/view_all";
    }
	
	   // Handler method for editing a book
    @GetMapping("/edit_book")
    public String editBook(@RequestParam("bookId") int bookId, Model model) {
        // Fetch the book details from the database using the bookId
        // You need to implement the logic to fetch book details from your database
        // For demonstration purposes, I'm assuming you have a BookService to fetch the book
        Book book = this.bookServiceImpl.getBookById(bookId);
        
        System.out.println(book);
        
        // Add the book object to the model to pass it to the view
        model.addAttribute("book", book);
        
        // Return the name of the view where users can edit the book details
        return "edit_book"; // Replace "edit_book" with the actual name of your view
    }
    
    @PostMapping("/update_book")
    public String updateBook(@ModelAttribute("book") Book book) {
        // Call the service method to update the book
        this.bookServiceImpl.updateBook(book);

        // Redirect to the page displaying all books
        return "redirect:/view_all";
    }

}
