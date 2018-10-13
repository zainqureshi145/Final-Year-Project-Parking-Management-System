package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SearchServlet() {
        super();
        
    }

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		String regNo=req.getParameter("regNo");
		req.setAttribute("reg", regNo);
		
		RequestDispatcher dipatch=req.getRequestDispatcher("/SearchResult.jsp");
		dipatch.forward(req, res);
		super.service(req, res);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
