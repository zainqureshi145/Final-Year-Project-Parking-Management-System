package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import dao.UserDAO;


public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AddUserServlet() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		int uid=Integer.parseInt(request.getParameter("uid"));
		user.setUserId(uid);
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setPhoneNo(request.getParameter("phone"));
		user.setPermiumUser(request.getParameter("puser"));
		int pspace=Integer.parseInt(request.getParameter("pid"));
		user.setParkingSpace(pspace);
		UserDAO userdao = new UserDAO(getServletContext());
		userdao.addUser(user);
		RequestDispatcher dispatch=request.getRequestDispatcher("/Users.jsp");
		dispatch.forward(request, response);
//		System.out.println("user Added");
	}

}
