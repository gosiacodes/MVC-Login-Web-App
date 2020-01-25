package aPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerAndCookieCreatorServlet
 */
@WebServlet("/ControllerAndCookieCreatorServlet")
public class ControllerAndCookieCreatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAndCookieCreatorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String userName = request.getParameter("userName");
			String mailAdress = request.getParameter("mailAdress");
			String password = request.getParameter("password");
			
			Cookie uname = new Cookie("uname", userName);
			Cookie mail = new Cookie("mail", mailAdress);
			Cookie pass = new Cookie("pass", password);
			
			response.addCookie(uname);
			response.addCookie(mail);
			response.addCookie(pass);
			
			uname.setMaxAge(300); 
			mail.setMaxAge(300);
			pass.setMaxAge(300);
			
			System.out.println(uname);
			System.out.println(mail);
			System.out.println(pass);
			
			aBean bean = new aBean();
			
			bean.setUserName(userName);
			bean.setMailAdress(mailAdress);
			bean.setPassword(password);
			request.setAttribute("bean", bean);
			
			boolean status = bean.validate();
			
			if(status) {
				RequestDispatcher rd= request.getRequestDispatcher("login-success.jsp");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd= request.getRequestDispatcher("login-error.jsp");
				rd.forward(request, response);
			}
			
			out.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}	
		
	}

}
