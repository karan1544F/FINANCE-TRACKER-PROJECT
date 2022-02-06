
public class ListExpenditure {
	protected String id;
	
	
	public ListExpenditure(String id, String idfinance, String type, String amount, String date) {
		super();
		this.id = id;
		this.idfinance = idfinance;
		this.type = type;
		this.amount = amount;
		this.date = date;
	}
	public String getid() {
		return id;
	}
	
	public void setid(String id) {
		this.id = id;
	}
	public String getidfinance() {
		return idfinance;
	}
	
	public void setidfinance(String idfinance) {
		this.idfinance = idfinance;
	}
	public String gettype() {
		return type;
	}
	
	public void settype(String type) {
		this.type = type;
	}
	public String getamount() {
		return amount;
	}
	
	public void setamount(String amount) {
		this.amount = amount;
	}
	public String getdate() {
		return date;
	}
	public void setdate(String date) {
		this.date = date;
	}
	protected String idfinance;
	protected String type;
	protected String amount;
	protected String date;
	
}

