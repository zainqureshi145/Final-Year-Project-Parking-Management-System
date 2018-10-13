package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletContext;




//import model.ParkingSpace;
import model.Transaction;
import dbUtill.DbUtill;

public class TransactionDAO {

	Connection connection;
	public TransactionDAO(ServletContext context){
		
		connection=DbUtill.getConnection(context);
		System.out.println(connection);
		
		
		
	}
	public void AddTransaction(Transaction t){
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("Insert into pms.Parking_Transactions(idTransaction_Histroy,Date_Time,User_idUser,Parking_Space_idParking_Space,Arrival_Time,Departure_Time,Payment_Status,Car_idCar)values(?,?,?,?,?,?,?,?)");
			preparedStmt.setInt(1, t.getIdTransaction_Histroy());
			java.sql.Timestamp date1 = new java.sql.Timestamp(new java.util.Date().getTime());
			preparedStmt.setTimestamp(2, date1);
			//preparedStmt.setString(2, t.getDate_time());
			preparedStmt.setInt(3, t.getUser_idUser());
			preparedStmt.setInt(4, t.getParking_Space_idParking_Space());
			
			preparedStmt.setDate(5,   new java.sql.Date(t.getArrival_Time().getTime()));
			//preparedStmt.setString(5, t.getArrival_Time());
			//java.sql.Timestamp date2 = new java.sql.Timestamp(1965-10-31 01:00:00.0);
			//preparedStmt.setTimestamp(5, date);
			preparedStmt.setString(6, "0000-00-00 00:00:00");
			preparedStmt.setString(7, "00");
			preparedStmt.setInt(8, t.getCar_idCar());
			preparedStmt.executeUpdate();
		    System.out.println("Data Inserted into Transaction");
		} catch (SQLException e) {
			System.out.println("Data not inserted into Transaction");
			e.printStackTrace();
		}
		
	
	
	
}
public int CheckPayment(int i,int j){
		int i0=i;
		int j0=j;
		int numberOfRows=0;
		ResultSet rs;
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("SELECT count(*)FROM parking_transactions Join user on parking_transactions.user_idUser=user.idUser Join car on parking_transactions.Car_IdCar=car.idCar join parking_space on parking_transactions.Parking_space_idParking_space=parking_space.idparking_space where floor='"+i0+"' and parking_space.Parking_Slot='"+j0+"'");
			rs = preparedStmt.executeQuery();
		      if (rs.next()) {
		        numberOfRows = rs.getInt(1);
		        System.out.println("numberOfRows1= " + numberOfRows);
		      } else {
		    	  numberOfRows =0;
		    	  System.out.println("numberOfRows2= " + numberOfRows);
		       // System.out.println("error: could not get the record counts");
		      }
			//preparedStmt.executeUpdate();
		    //System.out.println("Data Inserted into Parking_Space");
		} catch (SQLException e) {
			//System.out.println("Data not inserted into Parking_Space");
			e.printStackTrace();
		}
		
		return numberOfRows;
		
	}
public void UpdateTransaction(Transaction t){
	try {
		PreparedStatement preparedStmt=connection.prepareStatement("UPDATE pms.Parking_Transactions SET Departure_Time = ? WHERE idTransaction_Histroy = ?");
		preparedStmt.setDate(1,   new java.sql.Date(t.getDeparture_Time().getTime()));
		preparedStmt.setInt(2, t.getIdTransaction_Histroy());
		
		preparedStmt.executeUpdate();
	    System.out.println("Data Updated into Transaction");
	} catch (SQLException e) {
		System.out.println("Data not Updated into Transaction");
		e.printStackTrace();
	}
	



}
public void UpdatePayment(Transaction t){
	try {
		PreparedStatement preparedStmt=connection.prepareStatement("UPDATE pms.Parking_Transactions SET Payment_Status = ? WHERE idTransaction_Histroy = ?");
		preparedStmt.setString(1,   t.getPayment());
		preparedStmt.setInt(2, t.getIdTransaction_Histroy());
		
		preparedStmt.executeUpdate();
	    System.out.println("Payment Updated into Transaction");
	} catch (SQLException e) {
		System.out.println("Payment not Updated into Transaction");
		e.printStackTrace();
	}
	



}
	}
