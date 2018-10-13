	package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cars;
import dao.UserDAO;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	String UserName="Admin";
//	String Password="Admin";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String usrname = request.getParameter("uname");
		String upwd = request.getParameter("pass");
		UserDAO userdao = new UserDAO(getServletContext()); //Make the Object of UserDAO Class for access the Data
		if(userdao.isUser(usrname, upwd)){
			System.out.println("Login Successful");
			List<Cars> car2 = userdao.getAllCars();
			for(int i=0;i<car2.size();i++){
				System.out.println("Car ID : "+car2.get(i).getIdCar() + "Registration_No : "+car2.get(i).getRegistration_No() + "Car_Type " +car2.get(i).getCar_Type() + "Model : "+car2.get(i).getModel() + "User_idUser : "+car2.get(i).getUser_idUser());
			}
//			System.out.println(userdao.getAllCars());
//			ServletContext context = getServletContext();
//			response.sendRedirect("/LoginDAO/CarServlet");
			RequestDispatcher dispatch=request.getRequestDispatcher("/Index.jsp");
			dispatch.forward(request, response);
		}
	
		else{
			System.out.println("Login Failed");
			RequestDispatcher dispatch = request.getRequestDispatcher("/Error.jsp");
			dispatch.include(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String usrname = request.getParameter("uname");
//		String upwd = request.getParameter("pass");
//		UserDAO userdao = new UserDAO(getServletContext()); //Make the Object of UserDAO Class for access the Data
//		if(userdao.isUser(usrname, upwd)){
//			System.out.println("Login Successfull");
//			System.out.println(userdao.getAllCars());
////			ServletContext context = getServletContext();
//			response.sendRedirect("/LoginDAO/CarServlet");
////			RequestDispatcher dispatch=null;
////			dispatch.forward(request, response);
//		}
//	
//		else{
//			System.out.println("Login Failed");
//			RequestDispatcher dispatch = request.getRequestDispatcher("/Error.jsp");
//			dispatch.include(request, response);
//		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	

}
