package control;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import dao.ParkingDAO;
import dao.TransactionDAO;
import dao.UserDAO;
import model.Cars;
import model.ParkingSpace;
import model.Transaction;
import model.User;


public class InsertTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public InsertTransactionServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String button000=request.getParameter("button000");
	if(button000!=null){
		Transaction tran=new Transaction();
		int tid=Integer.parseInt(request.getParameter("tid"));
		tran.setIdTransaction_Histroy(tid);
		
		//tran.setDate_time(request.getParameter("date"));
		int uid=Integer.parseInt(request.getParameter("uid"));
		tran.setUser_idUser(uid);
		int pid=Integer.parseInt(request.getParameter("pid"));
		tran.setParking_Space_idParking_Space(pid);
		//tran.setArrival_Time(request.getParameter("atime"));
		//tran.setDeparture_Time("dtime");
		tran.setPayment("pay");
		int cid=Integer.parseInt(request.getParameter("cid"));
		tran.setCar_idCar(cid);
		TransactionDAO tdao=new TransactionDAO(getServletContext());
		tdao.AddTransaction(tran);
		RequestDispatcher dispatch=request.getRequestDispatcher("/System.jsp");
		dispatch.forward(request, response);
	}
	
	
		String button1=request.getParameter("button0");
		String button=request.getParameter("button1");
		if(button!=null){
			User user=new User();
			int Uid=Integer.parseInt(request.getParameter("uid"));	
			user.setUserId(Uid);
			user.setName(request.getParameter("name"));
			user.setEmail(request.getParameter("email"));
			user.setPhoneNo(request.getParameter("phone"));
			user.setPermiumUser(request.getParameter("puser"));
			int Pid=Integer.parseInt(request.getParameter("pid"));
		    user.setParkingSpace(Pid);
			
			Cars car=new Cars();
			int Cid=Integer.parseInt(request.getParameter("cid"));
			car.setIdCar(Cid);
			car.setRegistration_No(request.getParameter("reg"));
			car.setCar_Type(request.getParameter("ctype"));
			car.setModel(request.getParameter("model"));
			car.setUser_idUser(Uid);
			
			
			
		    Transaction t=new Transaction();
		    int Tid=Integer.parseInt(request.getParameter("tid"));
		    t.setIdTransaction_Histroy(Tid);
		    t.setCar_idCar(Cid);
		    t.setUser_idUser(Uid);
		    t.setParking_Space_idParking_Space(Pid);
		    String arrivalDate=request.getParameter("datetime");
		    
		    
		    SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");               
		    java.util.Date dt = null;
		    
		    try
		    {
		        dt = df.parse(arrivalDate);
		      
                t.setArrival_Time(dt);
		    } catch (ParseException e)
		   {
		        e.printStackTrace();
		    }
		   UserDAO uDAO=new UserDAO(getServletContext()); 
		   uDAO.addUser(user);
		   CarDAO cDAO=new CarDAO(getServletContext()); 
		   cDAO.AddCar(car);
		   TransactionDAO tDAO=new TransactionDAO(getServletContext()); 
		   tDAO.AddTransaction(t);
		   RequestDispatcher dipatch=request.getRequestDispatcher("/System.jsp");
			dipatch.forward(request, response);
		    
		}
		if(button1!=null){
			Transaction t=new Transaction();
		    int Tid=Integer.parseInt(request.getParameter("tid"));
		    t.setIdTransaction_Histroy(Tid);
			
           String dptDate=request.getParameter("datetime");
		    
		    
		    SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");               
		    java.util.Date dt = null;
		    
		    try
		    {
		        dt = df.parse(dptDate);
		      
                t.setDeparture_Time(dt);
		    } catch (ParseException e)
		   {
		        e.printStackTrace();
		    }
		    TransactionDAO tDAO=new TransactionDAO(getServletContext()); 
			   tDAO.UpdateTransaction(t);
			   request.setAttribute("tid", Tid);
			   RequestDispatcher dipatch=request.getRequestDispatcher("/Payme.jsp");
				dipatch.forward(request, response);
			
		}
	}

}
