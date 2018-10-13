package model;



public class Cars {
	
	public int idCar;
	private String Registration_No,Car_Type,Model;
	private int User_idUser;
	public int getIdCar() {
//		System.out.println(this.idCar);
		return idCar;
	}
	public void setIdCar(int idCar) {
		this.idCar = idCar;
//		System.out.println(this.idCar);
	}
	public String getRegistration_No() {
		return Registration_No;
	}
	public void setRegistration_No(String registration_No) {
		Registration_No = registration_No;
//		System.out.println(Registration_No);
	}
	public String getCar_Type() {
		return Car_Type;
	}
	public void setCar_Type(String car_Type) {
		Car_Type = car_Type;
//		System.out.println(Car_Type);
	}
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
//		System.out.println(Model);
	}
	public int getUser_idUser() {
		return User_idUser;
	}
	public void setUser_idUser(int user_idUser) {
		User_idUser = user_idUser;
//		System.out.println(User_idUser);
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
}
