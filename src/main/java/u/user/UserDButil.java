package u.user;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public static boolean validate3( String username, String Password) {
		
		try {
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "select* from user where userName ='"+username+"' and password ='"+Password+"'";
			rs = state.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
				e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<user> validate(String username, String Password)
	{
	
		ArrayList<user>u1 = new ArrayList<>();
		
		//validate
		try {
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "select* from user where userName ='"+username+"' and password ='"+Password+"'";
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				int userU =rs.getInt(1);
				String name = rs.getString(2);
				String usern = rs.getString(3);
				String email = rs.getString(4);
				String telNo = rs.getString(5);
				String passU = rs.getString(6);
				String birthD = rs.getString(7);
				
				user u = new user(userU, name, usern, email, telNo, passU, birthD);
				u1.add(u);
			}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}
		return u1;
	}
	
	public static List<video> validate1(String videocode, String videoname)
	{
	
		ArrayList<video>v1 = new ArrayList<>();
		
		//validate
		try {
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "select* from addvideo where videocode ='"+videocode+"' and videoname ='"+videoname+"'";
			rs = state.executeQuery(sql);
			
			if (rs.next()) {
				int id =rs.getInt(1);
				String vname = rs.getString(2);
				String vcode = rs.getString(3);
				String descript = rs.getString(4);
				String dte = rs.getString(5);
				String pth = rs.getString(6);
				String thumb = rs.getString(7);
				
				video v = new video(id,vname, vcode, descript, dte, pth, thumb);
				v1.add(v);
			}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}
		return v1;
	}


	public static boolean InsertVideo(String videocode, String videoname, String description, String date, String path,String thumbnail) {
		boolean isSuccess = false;
				
			 	try {
			 		con = DBconnect.getconnection();
					state = con.createStatement();
					String sql = "insert into addvideo values(0,'"+videocode+"','"+videoname+"','"+description+"','"+date+"','"+path+"','"+thumbnail+"')";
					int add = state.executeUpdate(sql);
					
					if(add>0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
		
		
		return isSuccess; 
	}
	
	public static boolean updatevideo(String id, String videocode, String videoname, String description, String date, String path, String thumbnail) {
		
		try {
			
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "update addvideo set videocode= '"+videocode+"',videoname= '"+videoname+"',description='"+description+"',date='"+date+"',path= '"+path+"',thumbnail= '"+thumbnail+"'"
						+ "where id='"+id+"'";
			int update = state.executeUpdate(sql);
			
			if(update>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<video> getVideoDetails(String id){
		
		int convertID = Integer.parseInt(id);
		
		ArrayList<video> v = new ArrayList<>();
		
		try {
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "select* from addvideo where id ='"+convertID +"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int Id = rs.getInt(1);
				String videocode = rs.getString(2);
				String videoname = rs.getString(3);
				String description = rs.getString(4);
				String date = rs.getString(5);
				String path = rs.getString(6);
				String Thumnail = rs.getString(7);
				
				video v2 = new video(Id, videocode, videoname, description, date, path, Thumnail);
				v.add(v2);
				}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
	
	
	public static boolean deletevideo(String id) {
		
		int convtid = Integer.parseInt(id);
		try {
			
			con = DBconnect.getconnection();
			state = con.createStatement();
			String sql = "delete from addvideo where id = '"+convtid+"'";
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
