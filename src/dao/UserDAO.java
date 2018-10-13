package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import model.Cars;
import model.User;
import dbUtill.DbUtill;

public class UserDAO {

	private Connection connection;

	public UserDAO(ServletContext context){
		connection = DbUtill.getConnection(context);
		System.out.println(connection);
	}



	/*public void addCar(Cars car){
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("Insert into pms.car (idCar,Registration_No,Car_Type,Model,User_idUser)values(?,?,?,?,?)");
			//			preparedStatement.setString(1, car.getCarId());
			//			preparedStatement.setString(2, car.getRegNo());
			//			preparedStatement.setString(3, car.getCarType());
			//			preparedStatement.setString(4, car.getModel());
			//			preparedStatement.setInt(5, car.getUser_idUser());
			//			preparedStatement.executeUpdate();
			System.out.println("Car Added");
		} catch (SQLException e) {
			System.out.println("Car Not Added"+e);
			e.printStackTrace();
		}
	}
*/
	public boolean isUser(String UserName,String Password){
		boolean flag=false;
		try {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from admin where UserName='"+UserName+"' and password='"+Password+"'");
			flag = rs.next();
			System.out.println("Flag Value is :"+flag);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;

	}

	public List<Cars> getAllCars(){
		ArrayList<Cars> mycars = new ArrayList<Cars>();
		Cars car1 = new Cars();
		
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from pms.car");

			while(rs.next()){

				car1.setIdCar(rs.getInt("idCar"));
				car1.getIdCar();
				car1.setRegistration_No(rs.getString("Registration_No"));
				car1.setCar_Type(rs.getString("Car_Type"));
				car1.setModel(rs.getString("Model"));
				car1.setUser_idUser(rs.getInt("User_idUser"));
				
				mycars.add(car1);
//				System.out.println(car1.getIdCar());
				
				
				
			}
//			System.out.println("All Cars"+mycars);

		} catch (SQLException e) {
			System.out.println("Some thing is went wrong");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0;i<mycars.size();i++){
			  System.out.println("Car ID : "+mycars.get(i).getIdCar() + "Registration_No"+mycars.get(i).getRegistration_No());
		}
		return mycars;
	}


	public void addUser(User user){
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("Insert into pms.user(idUser,Name,Email,Phone,Premium_user,Parking_Space_idParking_Space)values(?,?,?,?,?,?)");
			preparedStatement.setInt(1, user.getUserId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPhoneNo());
			preparedStatement.setString(5, user.getPermiumUser());
			preparedStatement.setInt(6, user.getParkingSpace());
			preparedStatement.executeUpdate();
			System.out.println("User Added");
		} catch (SQLException e) {
			// TODO Auto-generated catchblock
			System.out.println("User Not Added");
			e.printStackTrace();
		}
	}
	public void InsertAdmin(String name,String regno,String model,String type,String ID){
		try {
			String name0=name;
			String regno0=regno;
			String model0=model;
			String type0=type;
			String ID0=ID;
			PreparedStatement preparedStatement = connection.prepareStatement("Insert into pms.reserve(carID,Name,RegNo,Model,Type,date)values(?,?,?,?,?,?)");
			
			preparedStatement.setString(1,ID0 );
			preparedStatement.setString(2, name0);
			preparedStatement.setString(3,regno0 );
			preparedStatement.setString(4, model0);
			preparedStatement.setString(5,type0 );
			java.sql.Timestamp date1 = new java.sql.Timestamp(new java.util.Date().getTime());
			preparedStatement.setTimestamp(6, date1);
			preparedStatement.executeUpdate();
			System.out.println("Reservation Added");
		} catch (SQLException e) {
			// TODO Auto-generated catchblock
			System.out.println("Reservation not Added");
			e.printStackTrace();
		}
	}


}
