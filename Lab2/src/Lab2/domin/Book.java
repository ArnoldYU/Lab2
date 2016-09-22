package Lab2.domin;

import java.util.Date;

public class Book {
	private String authorID;
	private String publiser;
	private Date publiserDate;
	private double price;
	private String title;
	private String isbn;
	public String getAuthorID() {
		return authorID;
	}
	public void setAuthorID(String authorID) {
		this.authorID = authorID;
	}
	public String getPubliser() {
		return publiser;
	}
	public void setPubliser(String publiser) {
		this.publiser = publiser;
	}
	public Date getPubliserDate(){
		return publiserDate;
	}
	public void setPubliserDate(Date publiserDate) {
		this.publiserDate = publiserDate;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	public Book(){}
	public Book(String authorID, String publiser, Date publiserDate, double price, String title, String isbn) {
		super();
		this.authorID = authorID;
		this.publiser = publiser;
		this.publiserDate = publiserDate;
		this.price = price;
		this.title = title;
		this.isbn = isbn;
	}
	

}
