package pojo;

public class userAddress {
    private int Uid;
    private String name;
    private String phone;
    private String province;
    private String city;
    private String town;
    private String deadress;
    private boolean ifdefault;
    private int id;
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getDeadress() {
		return deadress;
	}
	public void setDeadress(String deadress) {
		this.deadress = deadress;
	}
	public boolean isIfdefault() {
		return ifdefault;
	}
	public void setIfdefault(boolean ifdefault) {
		this.ifdefault = ifdefault;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
