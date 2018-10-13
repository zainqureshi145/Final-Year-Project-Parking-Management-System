package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;


public class AndroidDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AndroidDataServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String name=request.getParameter("name");
		String regNo=request.getParameter("regNo");
		String model=request.getParameter("model");
		String type =request.getParameter("type");
		String ID=request.getParameter("ID");
		
		UserDAO dao=new UserDAO(getServletContext());
		dao.InsertAdmin(name, regNo,model,type,ID);
	}

}
