package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import dao.ParkingDAO;


public class InterfaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public InterfaceServlet() {
        super();
       
    }


	


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String button1=request.getParameter("button11");
		String button2=request.getParameter("button2");
		String button3=request.getParameter("button3");
		String button4=request.getParameter("button4");
		String button5=request.getParameter("button5");
		String button21=request.getParameter("button21");
		String button22=request.getParameter("button22");
		String button23=request.getParameter("button23");
		String button24=request.getParameter("button24");
		String button25=request.getParameter("button25");
		
		String button01=request.getParameter("button01");
		String button02=request.getParameter("button02");
		String button03=request.getParameter("button03");
		String button04=request.getParameter("button04");
		String button05=request.getParameter("button05");
		String button021=request.getParameter("button021");
		String button022=request.getParameter("button022");
		String button023=request.getParameter("button023");
		String button024=request.getParameter("button024");
		String button025=request.getParameter("button025");
		
		String button001=request.getParameter("button001");
		String button002=request.getParameter("button002");
		String button003=request.getParameter("button003");
		String button004=request.getParameter("button004");
		String button005=request.getParameter("button005");
		String button0021=request.getParameter("button0021");
		String button0022=request.getParameter("button0022");
		String button0023=request.getParameter("button0023");
		String button0024=request.getParameter("button0024");
		String button0025=request.getParameter("button0025");
		
		String value=request.getParameter("hdnbt");
		System.out.println("button value="+value);
		
		
		request.setAttribute("p1", value);
		/*request.setAttribute("p2", value2);
		request.setAttribute("p3", value3);
		request.setAttribute("p4", value4);
		request.setAttribute("p5", value5);
		request.setAttribute("p21", value21);
		request.setAttribute("p22", value22);
		request.setAttribute("p23", value23);
		request.setAttribute("p24", value24);
		request.setAttribute("p25", value25);*/
		
		if(button1 !=null){
			
			RequestDispatcher dispatch=request.getRequestDispatcher("/Dynamic.jsp");
			dispatch.forward(request, response);
		}
		else if(button2 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/Dynamic.jsp");
			dispatch.forward(request, response);
		}
		else if(button3 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/Dynamic.jsp");
			dispatch.forward(request, response);
		}
		else if(button4 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/Dynamic.jsp");
			dispatch.forward(request, response);
		}
		else if(button5 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/Dynamic.jsp");
			dispatch.forward(request, response);
		}
		else if(button21 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
		}
		else if(button22 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
		}
		else if(button23 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
		}
		else if(button24 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
		}
		else if(button25 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
		}
		else if(button01 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button02 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button03 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button04 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button05 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button001 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button002 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button003 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button004 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button005 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History.jsp");
			dispatch.forward(request, response);
		}
		else if(button021 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button022 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button023 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button024 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button025 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button0021 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button0022 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button0023 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		else if(button0024 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}else if(button0025 !=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/History2.jsp");
			dispatch.forward(request, response);
		}
		
		
		super.service(request, response);
	}





	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	String button1=request.getParameter("button1");
		String button2=request.getParameter("button2");
		String value=request.getParameter("hdnbt");
		System.out.println("value"+value);
		if(button1!=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor1.jsp");
			dispatch.forward(request, response);
			
		}
		if(button2!=null){
			RequestDispatcher dispatch=request.getRequestDispatcher("/floor2.jsp");
			dispatch.forward(request, response);
			
		}*/
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		/*
		ParkingDAO pdao=new ParkingDAO(getServletContext());
		int f1P1Occupied=0;
		f1P1Occupied= pdao.floorSlotOccupied(1, 1);
		System.out.println("value1="+f1P1Occupied);
		int f1p1Unoccupied= 0;
		f1p1Unoccupied= pdao.floorSlotUnoccupied(1, 1);
		int f1P2Occupied=0;
		f1P2Occupied= pdao.floorSlotOccupied(1, 2);
		int f1p2Unoccupied=0;
		f1p2Unoccupied= pdao.floorSlotUnoccupied(1, 2);
		int f1P3Occupied=0;
		f1P3Occupied= pdao.floorSlotOccupied(1, 3);
		int f1p3Unoccupied=0;
		f1p3Unoccupied= pdao.floorSlotUnoccupied(1, 3);
		int f1P4Occupied=0;
		f1P4Occupied= pdao.floorSlotOccupied(1, 4);
		int f1p4Unoccupied= 0;
		f1p4Unoccupied=pdao.floorSlotUnoccupied(1, 4);
		int f1P5Occupied=0;
		f1P5Occupied= pdao.floorSlotOccupied(1, 1);
		int f1p5Unoccupied=0;
		f1p5Unoccupied= pdao.floorSlotUnoccupied(1, 1);
		System.out.println("check"+f1P1Occupied);
		System.out.println("check"+f1p1Unoccupied);
		//HttpSession session=request.getSession();
		
		request.setAttribute("f1p1Occ",f1P1Occupied );
		request.setAttribute("f1p1Uocc", f1p1Unoccupied);
		request.setAttribute("f1p2Occ", f1P2Occupied);
		request.setAttribute("f1p2Uocc",f1p2Unoccupied);
		request.setAttribute("f1p3Occ", f1P3Occupied);
		request.setAttribute("f1p3Uocc", f1p3Unoccupied);
		request.setAttribute("f1p4Occ", f1P4Occupied);
		request.setAttribute("f1p4Uocc", f1p4Unoccupied);
		request.setAttribute("f1p5Occ", f1P5Occupied);
		request.setAttribute("f1p5Uocc", f1p5Unoccupied);
		//floor1
		int f2P1Occupied=0;
		f2P1Occupied= pdao.floorSlotOccupied(2, 1);
		int f2p1Unoccupied= 0;
		f2p1Unoccupied= pdao.floorSlotUnoccupied(2, 1);
		int f2P2Occupied=0;
		f2P2Occupied= pdao.floorSlotOccupied(2, 2);
		int f2p2Unoccupied=0;
		f2p2Unoccupied= pdao.floorSlotUnoccupied(2, 2);
		int f2P3Occupied=0;
		f2P3Occupied= pdao.floorSlotOccupied(2, 3);
		int f2p3Unoccupied= 0;
		f2p3Unoccupied= pdao.floorSlotUnoccupied(2, 3);
		int f2P4Occupied=0;
		f2P4Occupied=pdao.floorSlotOccupied(2, 4);
		int f2p4Unoccupied=0;
	    f2p4Unoccupied=pdao.floorSlotUnoccupied(2, 4);
	    int f2P5Occupied=0;
		f2P5Occupied=pdao.floorSlotOccupied(2, 1);
		int f2p5Unoccupied=0;
	    f2p5Unoccupied=pdao.floorSlotUnoccupied(2, 1);
		request.setAttribute("f2p1Occ",f2P1Occupied);
		request.setAttribute("f2p1Uocc",f2p1Unoccupied);
		request.setAttribute("f2p2Occ", f2P2Occupied);
		request.setAttribute("f2p2Uocc",f2p2Unoccupied);
		request.setAttribute("f2p3Occ",f2P3Occupied);
		request.setAttribute("f2p3Uocc",f2p3Unoccupied);
		request.setAttribute("f2p4Occ",f2P4Occupied);
		request.setAttribute("f2p4Uocc",f2p4Unoccupied);
		request.setAttribute("f2p5Occ",f2P5Occupied);
		request.setAttribute("f2p5Uocc", f2p5Unoccupied);
		
		 request.getRequestDispatcher("/DynamicScreen.jsp").forward(request, response);
		*/
	}

}
