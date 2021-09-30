package u.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/videoAccesss")
public class videoAccesss extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String videocode = request.getParameter("vid");
		String videoname= request.getParameter("vname");
	
		try {
		List<video> VideoUpdate = UserDButil.validate1(videocode, videoname);
		request.setAttribute("VideoUpdate", VideoUpdate);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		String Videoaccount = "videoAccount.jsp";
		RequestDispatcher dis3 = request.getRequestDispatcher(Videoaccount);
		dis3.forward(request, response);
		
		
	}

}
