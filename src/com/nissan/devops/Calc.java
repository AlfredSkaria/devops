package com.nissan.devops;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Calc
 */
@WebServlet("/Calc")
public class Calc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String str1 = request.getParameter("num1");
		String str2 = request.getParameter("num2");
		
		
		if(str1 !="" && str2!="")
		{	
			
			if(str1.matches(".*\\d+.*") && str2.matches(".*\\d+.*"))
			{
					double num1 = Double.parseDouble(str1);
					double num2 = Double.parseDouble(str2);
					
					Calculate c = new Calculate();
					
					double result = c.add(num1, num2);
					request.setAttribute("RESULT", result);
			}
			else
			{
				request.setAttribute("RESULT","!!Please enter numbers!!");
			}
		
		}
		else
		{
			String result = new String();
			result = "!!Enter any values please!!";
			request.setAttribute("RESULT", result);
		}
		
		
		
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
