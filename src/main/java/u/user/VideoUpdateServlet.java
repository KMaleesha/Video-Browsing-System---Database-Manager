package u.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VideoUpdateServlet")
public class VideoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("vid");
		String videocode = request.getParameter("vcode");
		String videoname = request.getParameter("vname");
		String description = request.getParameter("des");
		String date = request.getParameter("date");
		String path = request.getParameter("pth");
		String thumbnail = request.getParameter("thbn");
		
		boolean isTrue;
		
		isTrue = UserDButil.updatevideo(id, videocode, videoname, description, date, path, thumbnail); 
		
		if(isTrue == true) {
			
			List<video> videodetails =UserDButil.getVideoDetails(id);
			request.setAttribute("VideoUpdate", videodetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("videoAccount.jsp");
			dis.forward(request, response);
		}else {
			
			List<video> videodetails =UserDButil.getVideoDetails(id);
			request.setAttribute("VideoUpdate", videodetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("videoAccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
