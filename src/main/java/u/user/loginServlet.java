package u.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("userN");
		String Password = request.getParameter("pass");
	
		boolean isTrue;
		
		isTrue =UserDButil.validate3(username, Password);
		
		if(isTrue == true) {
			List<user> userDetails = UserDButil.validate(username, Password);
			request.setAttribute("userDetails", userDetails);
			
			String Useraccount = "UserAccount.jsp";
			RequestDispatcher dis = request.getRequestDispatcher(Useraccount);
			dis.forward(request, response);
			
		}else {
			out.println("<script type = 'test/javascript'>");
			out.println("alert('Your Username or Password in incorrect')");
			out.println("location ='login.jsp'");
			out.println("</script>");
		}
		
		try {
		List<user> userDetails = UserDButil.validate(username, Password);
		request.setAttribute("userDetails", userDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		String Useraccount = "UserAccount.jsp";
		RequestDispatcher dis = request.getRequestDispatcher(Useraccount);
		dis.forward(request, response);
		
	}

}
