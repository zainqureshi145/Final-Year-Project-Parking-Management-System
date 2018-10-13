package model;

public class User {

	private int userId;
	private String name,email,phoneNo,permiumUser;
	private int parkingSpace;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getPermiumUser() {
		return permiumUser;
	}
	public void setPermiumUser(String permiumUser) {
		this.permiumUser = permiumUser;
	}
	public int getParkingSpace() {
		return parkingSpace;
	}
	public void setParkingSpace(int parkingSpace) {
		this.parkingSpace = parkingSpace;
	}
	
}
