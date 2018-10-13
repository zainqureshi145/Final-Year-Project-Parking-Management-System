package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public HomeServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String button1 = request.getParameter("button1");
		String button2 = request.getParameter("button2");
		String button3 = request.getParameter("button3");
		String button4 = request.getParameter("button4");
		String button5 = request.getParameter("button5");
		String button6 = request.getParameter("button6");
		String button7 = request.getParameter("button7");
		String button8 = request.getParameter("button8");
		String button9 = request.getParameter("button9");
		String button10 = request.getParameter("button10");
		String button11 = request.getParameter("button11");
		String button12 = request.getParameter("button00");
		String button13 = request.getParameter("button000");
		String button14 = request.getParameter("button101");
		//String button12 = request.getParameter("button12");
		if(button1!=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/ListAllCars.jsp");
			dispatch.forward(request, response);
			System.out.println("1 is clicked");
		}
		else if(button2!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/ParkingSpaces.jsp");
			dipatch.forward(request, response);
		}
		else if(button3!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Home.jsp");
			dipatch.forward(request, response);
		}
		else if(button4!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/System.jsp");
			dipatch.forward(request, response);
		}
		else if(button5!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Users.jsp");
			dipatch.forward(request, response);
		}
		else if(button6!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Insert.jsp");
			dipatch.forward(request, response);
		}
		else if(button7!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Information.jsp");
			dipatch.forward(request, response);
		}
		else if(button8!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/InsertParking.jsp");
			dipatch.forward(request, response);
		}
		else if(button9!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/InsertUser.jsp");
			dipatch.forward(request, response);
		}
		else if(button10!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/InsertTransaction.jsp");
			dipatch.forward(request, response);
		}
		else if(button11!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/MainScreen.jsp");
			dipatch.forward(request, response);
		}
		else if(button12!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Search.jsp");
			dipatch.forward(request, response);
		}
		else if(button13!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/Reserve.jsp");
			dipatch.forward(request, response);
		}
		else if(button14!=null){
			RequestDispatcher dipatch=request.getRequestDispatcher("/CheckOut.jsp");
			dipatch.forward(request, response);
		}
		//else if(button12!=null){
		//	RequestDispatcher rd =
		//		    this.getServletConfig().getServletContext().getRequestDispatcher("/control/CheckServlet.java");
		//		    rd.forward(request,response);
			//response.sendRedirect("/control/CheckServlet.java");
			//RequestDispatcher dipatch=request.getRequestDispatcher("CheckServet.java");
			//dipatch.forward(request, response);
		//}
	}

}
