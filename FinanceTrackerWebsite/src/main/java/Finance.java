
public class Finance {
	protected String id;
	
	
	public Finance(String id, String iduser, String income, String saving) {
		super();
		this.id = id;
		this.iduser = iduser;
		this.income = income;
		this.saving = saving;
	}
	public String getid() {
		return id;
	}
	
	public void setid(String id) {
		this.id = id;
	}
	public String getiduser() {
		return iduser;
	}
	
	public void setiduser(String iduser) {
		this.iduser = iduser;
	}
	public String getincome() {
		return income;
	}
	
	public void setincome(String income) {
		this.income = income;
	}
	public String getsaving() {
		return saving;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void setsaving(String saving) {
		this.saving = saving;
	}
	protected String iduser;
	protected String income;
	protected String saving;
	
}
