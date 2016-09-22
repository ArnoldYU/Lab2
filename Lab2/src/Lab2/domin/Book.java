package Lab2.domin;

public class Book {
	private String authorID;
	private String publiser;
	private String publiserDate;
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
	public String getPubliserDate() {
		return publiserDate;
	}
	public void setPubliserDate(String publiserDate) {
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
		result = prime * result + ((authorID == null) ? 0 : authorID.hashCode());
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
		if (authorID == null) {
			if (other.authorID != null)
				return false;
		} else if (!authorID.equals(other.authorID))
			return false;
		return true;
	}
	public Book(){}
	public Book(String authorID, String publiser, String publiserDate, double price, String title, String isbn) {
		super();
		this.authorID = authorID;
		this.publiser = publiser;
		this.publiserDate = publiserDate;
		this.price = price;
		this.title = title;
		this.isbn = isbn;
	}
	
	

}
