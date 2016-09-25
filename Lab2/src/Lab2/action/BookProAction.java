package Lab2.action;

import com.opensymphony.xwork2.Action;

import Lab2.domin.Book;
import Lab2.service.AuthorService;
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
		int judge=0;
		judge=bk.addBook(book);
		if(judge==1){
			return SUCCESS;
		}
		return ERROR;
	}
	public String change(){
		BookService bk=new BookService();
		Integer i=bk.changebook(book);
		if (i>0)
			return SUCCESS;
		return ERROR;
	}
	public String delete(){
		BookService au=new BookService();
		au.deleteBook(book);
		return SUCCESS;
	}
	public String search(){
		BookService au=new BookService();
		setBook(au.searchbook(book));
		return SUCCESS;
	}
}
