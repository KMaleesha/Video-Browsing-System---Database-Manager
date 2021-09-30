package u.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteVideoServlet")
public class DeleteVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("vid");
		
		
		boolean isTrue ;
		isTrue = UserDButil.deletevideo(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("userInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<video> videodetails = UserDButil.getVideoDetails(id);
			request.setAttribute("videodelete", videodetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("videoAccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
