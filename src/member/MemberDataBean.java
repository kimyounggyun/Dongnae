package member;

import java.sql.*;
import java.util.Date;

public class MemberDataBean{

private String id;
private String passwd;
private String name;
private String nick;
private boolean sex;
private String birth;
private String email;
private String phone;
private String addr;
private String linum;
private String lipic;
private Date regdate;
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPasswd() {
	return passwd;
}
public void setPasswd(String passwd) {
	this.passwd = passwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNick() {
	return nick;
}
public void setNick(String nick) {
	this.nick = nick;
}
public boolean getSex() {
	return sex;
}
public void setSex(boolean sex) {
	this.sex = sex;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public String getLinum() {
	return linum;
}
public void setLinum(String linum) {
	this.linum = linum;
}
public String getLipic() {
	return lipic;
}
public void setLipic(String lipic) {
	this.lipic = lipic;
} 
}