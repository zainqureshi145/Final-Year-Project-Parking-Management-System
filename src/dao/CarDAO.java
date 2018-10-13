package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import org.apache.catalina.connector.Request;

import model.Cars;
import dbUtill.DbUtill;

@SuppressWarnings("unused")
public class CarDAO {
Connection connection;
public CarDAO(ServletContext servlet){
	
	connection=DbUtill.getConnection(servlet);
	System.out.println(connection);
	
}
public void AddCar(Cars car){
	try {
		PreparedStatement ps=connection.prepareStatement("Insert into pms.car (idCar,Registration_No,Car_Type,Model,User_idUser)values(?,?,?,?,?)");
	     ps.setInt(1, car.getIdCar());
	     ps.setString(2,car.getRegistration_No());
	     ps.setString(3, car.getCar_Type());
	     ps.setString(4, car.getModel());
	     ps.setInt(5, car.getIdCar());
	     ps.executeUpdate();
	  System.out.println("Inserted into Car");
	} catch (SQLException e) {
		System.out.println("Not Inserted into Car");
		e.printStackTrace();
	}
	
	
}





}
