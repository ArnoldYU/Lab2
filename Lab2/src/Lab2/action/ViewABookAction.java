package Lab2.action;

import java.util.List;

import com.opensymphony.xwork2.Action;

import Lab2.domin.Book;
import Lab2.service.BookService;



public class ViewABookAction implements Action {

	private List<Book> books;
	
	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	@Override
	public String execute() throws Exception {
		BookService au = new BookService();
		
		setBooks(au.getAllBooks());
		return SUCCESS;
	}

}
