package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ManagerDao;
import model.Employee;

/**
 * Servlet implementation class DrawSameSalary
 */
@WebServlet("/DrawSameSalary")
public class DrawSameSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DrawSameSalary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Employee> salaryList = new ArrayList<Employee>();
		salaryList = ManagerDao.empWithSameSalary(Integer.parseInt(request.getParameter("emplist")));
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p>");
		out.println("Employees across departments who are drawing the same salary:");
		out.println("<br/><br/>");
		for(Employee emp : salaryList) {
			out.println(emp.geteName());
			out.println("<br/>");
		}
		out.println("</p>");
		out.println("</html></body>");
	}

}
