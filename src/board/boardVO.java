package board;

import java.util.Date;

public class boardVO {
	
	private int no;
	private String subject;
	private String nicname;
	private String id;
	private String content;
	private String file_orgname;
	private String file_savname;
	private int readhit;
	private Date regdate;
	

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getNicname() {
		return nicname;
	}
	public void setNicname(String nicname) {
		this.nicname = nicname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile_orgname() {
		return file_orgname;
	}
	public void setFile_orgname(String fileOrgname) {
		file_orgname = fileOrgname;
	}
	public String getFile_savname() {
		return file_savname;
	}
	public void setFile_savname(String fileSavname) {
		file_savname = fileSavname;
	}
	public int getReadhit() {
		return readhit;
	}
	public void setReadhit(int readhit) {
		this.readhit = readhit;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
