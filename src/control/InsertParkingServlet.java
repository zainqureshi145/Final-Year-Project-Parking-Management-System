package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ParkingDAO;
import model.ParkingSpace;


public class InsertParkingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public InsertParkingServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ParkingSpace ps=new ParkingSpace();
		int parkingId=Integer.parseInt(request.getParameter("pid"));
		ps.setIdParking_Space(parkingId);
		int floor=Integer.parseInt(request.getParameter("floor"));
		ps.setFloor(floor);
		int slot=Integer.parseInt(request.getParameter("ps"));
		ps.setParking_Slot(slot);
		ps.setStatus(request.getParameter("status"));
		ParkingDAO pdao=new ParkingDAO(getServletContext());
		pdao.AddParking(ps);
		RequestDispatcher dispatch=request.getRequestDispatcher("/ParkingSpaces.jsp");
		dispatch.forward(request, response);
		
	}

}
