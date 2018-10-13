package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ParkingDAO;


public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CheckServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String button=request.getParameter("button1");
		if(button!=null){
		ParkingDAO pdao=new ParkingDAO(getServletContext());
		int floor1slot1=0;
		int floor1slot1U=0;
		int floor1slot2=0;
		int floor1slot2U=0;
		int floor1slot3=0;
		int floor1slot3U=0;
		////
		int floor1slot4=0;
		int floor1slot4U=0;
		int floor1slot5=0;
		int floor1slot5U=0;
	floor1slot1=pdao.LastTry(1, 1);
	//System.out.println("result = "+floor1slot1);
	floor1slot1U=pdao.LastTry1(1, 1);
	floor1slot2=pdao.LastTry(1, 2);
	floor1slot2U=pdao.LastTry1(1, 2);
	floor1slot3=pdao.LastTry(1, 3);
	floor1slot3U=pdao.LastTry1(1, 3);
	floor1slot4=pdao.LastTry(1, 4);
	floor1slot4U=pdao.LastTry1(1, 4);
	floor1slot5=pdao.LastTry(1, 5);
	floor1slot5U=pdao.LastTry1(1, 5);
	
	request.setAttribute("f1p1Occ", floor1slot1);
	request.setAttribute("f1p1Uocc", floor1slot1U);
	request.setAttribute("f1p2Occ", floor1slot2);
	request.setAttribute("f1p2UOcc", floor1slot2U);
	request.setAttribute("f1p3Occ", floor1slot3);
	request.setAttribute("f1p3Uocc", floor1slot3U);
	request.setAttribute("f1p4Occ", floor1slot4);
	request.setAttribute("f1p4Uocc", floor1slot4U);
	request.setAttribute("f1p5Occ", floor1slot5);
	request.setAttribute("f1p5Uocc", floor1slot5U);
	///floor1
	
	int floor2slot1=0;
	int floor2slot1U=0;
	int floor2slot2=0;
	int floor2slot2U=0;
	int floor2slot3=0;
	int floor2slot3U=0;
	////
	int floor2slot4=0;
	int floor2slot4U=0;
	int floor2slot5=0;
	int floor2slot5U=0;
	
	floor2slot1=pdao.LastTry(2, 1);
	//System.out.println("result = "+floor1slot1);
	floor2slot1U=pdao.LastTry1(2, 1);
	floor2slot2=pdao.LastTry(2, 2);
	floor2slot2U=pdao.LastTry1(2, 2);
	floor2slot3=pdao.LastTry(2, 3);
	floor2slot3U=pdao.LastTry1(2, 3);
	floor2slot4=pdao.LastTry(2, 4);
	floor2slot4U=pdao.LastTry1(2, 4);
	floor2slot5=pdao.LastTry(2, 5);
	floor2slot5U=pdao.LastTry1(2, 5);
	
	request.setAttribute("f2p1Occ", floor2slot1);
	request.setAttribute("f2p1Uocc", floor2slot1U);
	request.setAttribute("f2p2Occ", floor2slot2);
	request.setAttribute("f2p2UOcc", floor2slot2U);
	request.setAttribute("f2p3Occ", floor2slot3);
	request.setAttribute("f2p3Uocc", floor2slot3U);
	request.setAttribute("f2p4Occ", floor2slot4);
	request.setAttribute("f2p4Uocc", floor2slot4U);
	request.setAttribute("f2p5Occ", floor2slot5);
	request.setAttribute("f2p5Uocc", floor2slot5U);
	
	RequestDispatcher dispatch=request.getRequestDispatcher("/DynamicScreen.jsp");
	dispatch.forward(request, response);
	
		super.service(request, response);
		}
		
	}

}
