package model;

import java.util.Date;

public class Transaction {

	public int idTransaction_Histroy;
	public Date Date_time;
	public int User_idUser;
	public int Parking_Space_idParking_Space;
	public Date Arrival_Time;
	public Date Departure_Time;
	public String payment;
	public int Car_idCar;
	public int getIdTransaction_Histroy() {
		return idTransaction_Histroy;
	}
	public void setIdTransaction_Histroy(int idTransaction_Histroy) {
		this.idTransaction_Histroy = idTransaction_Histroy;
	}
	public Date getDate_time() {
		return Date_time;
	}
	public void setDate_time(Date date_time) {
		Date_time = date_time;
	}
	public int getUser_idUser() {
		return User_idUser;
	}
	public void setUser_idUser(int user_idUser) {
		User_idUser = user_idUser;
	}
	public int getParking_Space_idParking_Space() {
		return Parking_Space_idParking_Space;
	}
	public void setParking_Space_idParking_Space(int parking_Space_idParking_Space) {
		Parking_Space_idParking_Space = parking_Space_idParking_Space;
	}
	public Date getArrival_Time() {
		return Arrival_Time;
	}
	public void setArrival_Time(Date dt) {
		Arrival_Time = dt;
	}
	public Date getDeparture_Time() {
		return Departure_Time;
	}
	public void setDeparture_Time(Date departure_Time) {
		Departure_Time = departure_Time;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getCar_idCar() {
		return Car_idCar;
	}
	public void setCar_idCar(int car_idCar) {
		Car_idCar = car_idCar;
	}
	
}
