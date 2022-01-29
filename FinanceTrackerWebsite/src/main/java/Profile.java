
public class Profile {

	protected int id;
	 protected int iduser;
	 protected String name;
	 protected String surname;
	 protected String bio;
	public Profile(int id, int iduser, String name, String surname, String bio) {
		super();
		this.id = id;
		this.iduser = iduser;
		this.name = name;
		this.surname = surname;
		this.bio = bio;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
}
