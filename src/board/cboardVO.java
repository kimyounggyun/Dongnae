package board;

import java.util.Date;

public class cboardVO {
	private int no;
	private int originno;
	private String nicname;
	private String id;
	private String content;
	private Date regdate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getOriginno() {
		return originno;
	}
	public void setOriginno(int orginno) {
		this.originno = orginno;
	}
	public String getNicame() {
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
