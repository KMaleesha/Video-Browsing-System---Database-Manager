package u.user;

public class video {
	private int id;
	private String videocode;
	private String videoname;
	private String description;
	private String date;
	private String path;
	private String thumbnail;

	public video(int id, String videocode, String videoname, String description, String date, String path,String thumbnail)
	{
		this.id = id;
		this.videocode = videocode;
		this.videoname = videoname;
		this.description = description;
		this.date = date;
		this.path = path;
		this.thumbnail = thumbnail;
	}

	public int getId() {
		return id;
	}
	public String getVideocode() {
		return videocode;
	}
	public String getVideoname() {
		return videoname;
	}
	public String getDescription() {
		return description;
	}
	public String getDate() {
		return date;
	}
	public String getPath() {
		return path;
	}
	public String getThumbnail() {
		return thumbnail;
	}



	
}
