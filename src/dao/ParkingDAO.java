package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;




import com.mysql.jdbc.Statement;


//import com.mysql.jdbc.PreparedStatement;
import java.sql.PreparedStatement;

import model.ParkingSpace;
import dbUtill.DbUtill;

public class ParkingDAO {
	Connection connection;
	public ParkingDAO(ServletContext context){
		
		connection=DbUtill.getConnection(context);
		System.out.println(connection);
		
		
	}
	java.sql.Statement stmt;
	//Connection conn;
	ResultSet rs=null;
	String status="occupied";
	String status2="unoccupied";
	int floor=1;
	int floor2=2;
	int countOSlot1=0;
	int countUSlot1=0;
	
	

	public void AddParking(ParkingSpace ps){
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("Insert into pms.Parking_Space(idParking_Space,Floor,Parking_Slot,Status)values(?,?,?,?)");
			preparedStmt.setInt(1, ps.getIdParking_Space());
			preparedStmt.setInt(2, ps.getFloor());
			preparedStmt.setInt(3, ps.getParking_Slot());
			preparedStmt.setString(4, ps.getStatus());
			preparedStmt.executeUpdate();
		    System.out.println("Data Inserted into Parking_Space");
		} catch (SQLException e) {
			System.out.println("Data not inserted into Parking_Space");
			e.printStackTrace();
		}
		
		
		
	}
	public int CheckStatusOccupied(){
		
		int numberOfRows=0;
		ResultSet rs;
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("SELECT count(*) FROM parking_space where parking_space.status='"+status+"'");
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
public int CheckStatusUnoccupied(){
		
		int numberOfRows=0;
		ResultSet rs;
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("SELECT count(*) FROM parking_space where parking_space.status='"+status2+"'");
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
	public int LastTry(int i,int j){
		int i0=i;
		int j0=j;
		int numberOfRows=0;
		ResultSet rs;
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("SELECT count(*) FROM parking_space where parking_space.status='"+status+"' and floor='"+i0+"' and parking_slot='"+j0+"'");
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
	
	public int LastTry1(int i,int j){
		int i0=i;
		int j0=j;
		int numberOfRows=0;
		ResultSet rs;
		try {
			PreparedStatement preparedStmt=connection.prepareStatement("SELECT count(*) FROM parking_space where parking_space.status='"+status2+"' and floor='"+i0+"' and parking_slot='"+j0+"'");
			rs = preparedStmt.executeQuery();
		      if (rs.next()) {
		        numberOfRows = rs.getInt(1);
		        System.out.println("numberOfRows2= " + numberOfRows);
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
	public int floorSlotOccupied(int floor,int ps){
		int floor0=floor;
		int parkingslot=ps;
		System.out.println(floor0);
		System.out.println(parkingslot);
		String sql = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status+"' and floor='"+floor0+"' and parking_slot='"+parkingslot+"'";
		try {
			stmt =  connection.createStatement();
			rs =  stmt.executeQuery(sql);
			countOSlot1=rs.getRow();
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("error");
		}

		try {
			while(rs.next()){
				
				rs.getInt("Floor");
				rs.getInt("Parking_Slot");
				rs.getString("Status");
				countOSlot1++;
				
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error");
			e.printStackTrace();
		}
		System.out.println(countOSlot1);
		
		return countOSlot1;
	}
	public int floorSlotUnoccupied(int floor,int ps){
		int floor0=floor;
		int parkingslot=ps;
		String sql = "SELECT parking_space.floor,parking_space.parking_Slot,parking_space.status FROM parking_space where parking_space.status='"+status2+"' and floor='"+floor0+"' and parking_slot='"+parkingslot+"'";
		try {
			stmt = connection.createStatement();
			rs =  stmt.executeQuery(sql);
			countUSlot1=rs.getRow();
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			System.out.println("error");
			e1.printStackTrace();
		}

		try {
			while(rs.next()){
				
				rs.getInt("Floor");
				rs.getInt("Parking_Slot");
				rs.getString("Status");
				countUSlot1++;
				System.out.println(countUSlot1);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error");
			e.printStackTrace();
		}
		System.out.println(countUSlot1);
		return countUSlot1;
	}
	
}
