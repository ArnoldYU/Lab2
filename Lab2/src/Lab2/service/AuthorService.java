package Lab2.service;

import java.util.ArrayList;
import java.util.List;

import Lab2.domin.Author;

public class AuthorService {
	static List<Author> authorDb;
	
	static {
		authorDb=new ArrayList<>();
		authorDb.add(new Author("110","sun","19","China"));
	}

	public Integer validateAuthor(Author author) {
		for (Author u:authorDb){
			if(u.equals(author))
				return 1;
		}
		return -1;
	}

	public void addAuthor(Author author) {
		// TODO Auto-generated method stub
		authorDb.add(author);
	}

	public List<Author> getAllAuthors() {
		// TODO Auto-generated method stub
		return authorDb;
	}
}
