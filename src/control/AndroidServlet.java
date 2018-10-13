package control;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ParkingDAO;
import dao.UserDAO;


public class AndroidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AndroidServlet() {
        super();
       
    }


	
	 protected void doGet(HttpServletRequest request,
	            HttpServletResponse response) 
	            throws ServletException, IOException {
		 ParkingDAO dao=new ParkingDAO(getServletContext());
			int value=dao.CheckStatusUnoccupied();
			int value2=dao.CheckStatusOccupied();
			
			 PrintWriter out = response.getWriter();
		        out.println("Total Unoccupied Spaces = "+value);
		        out.println("Total occupied Spaces = "+value2);
	    }
	
    

		




	

}
