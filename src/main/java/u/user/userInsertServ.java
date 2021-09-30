package u.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/userInsertServ")
public class userInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String videocode = request.getParameter("vcode");
		String videoname= request.getParameter("vname");
		String description = request.getParameter("des");
		String date = request.getParameter("date");
		String path = request.getParameter("path");
		String thumbnail = request.getParameter("thbn");
		
		boolean isTrue;
		
		isTrue = UserDButil.InsertVideo(videocode, videoname, description, date, path, thumbnail);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
