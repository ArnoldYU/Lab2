package Lab2.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Lab2.domin.Book;

public class BookService {
	static List<Book> bookDb;
	static {
		bookDb=new ArrayList<>();
		bookDb.add(new Book("111","1",new Date(),11,"1","1"));
	}
	public Integer validateBook(Book book){
		for (Book b:bookDb){
			if (b.equals(book))
				return 1;
		}
		return -1;
	}
	public void addBook(Book book) {
		// TODO Auto-generated method stub
		bookDb.add(book);
	}
	public List<Book> getAllBooks() {
		// TODO Auto-generated method stub
		return bookDb;
	}
}
