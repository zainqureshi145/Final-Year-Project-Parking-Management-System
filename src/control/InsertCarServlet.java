package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import model.Cars;


public class InsertCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InsertCarServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cars car=new Cars();
		int carid=Integer.parseInt(request.getParameter("carid"));
		car.setIdCar(carid);
		car.setRegistration_No(request.getParameter("regno"));
		car.setCar_Type(request.getParameter("ctype"));
		car.setModel(request.getParameter("model"));
		int userid=Integer.parseInt(request.getParameter("uid"));
		car.setUser_idUser(userid);
		CarDAO cardao= new CarDAO(getServletContext());
		cardao.AddCar(car);
		RequestDispatcher dispatch=request.getRequestDispatcher("/ListAllCars.jsp");
		dispatch.forward(request, response);
	}

}
