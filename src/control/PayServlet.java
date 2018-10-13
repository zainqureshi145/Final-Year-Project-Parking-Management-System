package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Transaction;
import dao.ParkingDAO;
import dao.TransactionDAO;


public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String btn1=request.getParameter("button0");
		String btn=request.getParameter("button1");
		if(btn != null){
		TransactionDAO dao=new TransactionDAO(getServletContext());
		int slot1floor1=dao.CheckPayment(1, 1);
		int slot2floor1=dao.CheckPayment(1, 2);
		int slot3floor1=dao.CheckPayment(1, 3);
		int slot4floor1=dao.CheckPayment(1, 4);
		int slot5floor1=dao.CheckPayment(1, 5);
		int slot1floor2=dao.CheckPayment(2, 1);
		int slot2floor2=dao.CheckPayment(2, 2);
		int slot3floor2=dao.CheckPayment(2, 3);
		int slot4floor2=dao.CheckPayment(2, 4);
		int slot5floor2=dao.CheckPayment(2, 5);
		
		request.setAttribute("slot1floor1", slot1floor1);
		request.setAttribute("slot2floor1", slot2floor1);
		request.setAttribute("slot3floor1", slot3floor1);
		request.setAttribute("slot4floor1", slot4floor1);
		request.setAttribute("slot5floor1", slot5floor1);
		request.setAttribute("slot1floor2", slot1floor2);
		request.setAttribute("slot2floor2", slot2floor2);
		request.setAttribute("slot3floor2", slot3floor2);
		request.setAttribute("slot4floor2", slot4floor2);
		request.setAttribute("slot5floor2", slot5floor2);
		
		RequestDispatcher dipatch=request.getRequestDispatcher("/Payment.jsp");
		dipatch.forward(request, response);
		
	
		super.service(request, response);
		}
		if(btn1!=null){
			
			Transaction t=new Transaction();
			t.setPayment(request.getParameter("pay"));
			int Tid=Integer.parseInt(request.getParameter("tid"));
		    t.setIdTransaction_Histroy(Tid);
		    TransactionDAO tDAO=new TransactionDAO(getServletContext());
		    tDAO.UpdatePayment(t);
		    RequestDispatcher dipatch=request.getRequestDispatcher("/System.jsp");
			dipatch.forward(request, response);
			
			
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
