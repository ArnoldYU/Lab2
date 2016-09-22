package Lab2.action;

import com.opensymphony.xwork2.Action;

import Lab2.domin.Book;
import Lab2.service.BookService;


public class BookProAction implements Action {

	private Book book;
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	@Override
	public String execute() throws Exception {
		BookService bk=new BookService();
		Integer id= bk.validateBook(book);
		if (id>0){
			return SUCCESS; 
		}
		return ERROR;
	}
	public String regist(){
		BookService bk=new BookService();
		bk.addBook(book);
		return SUCCESS;
	}
}
