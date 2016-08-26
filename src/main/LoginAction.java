package main;


import member.MemberDataBean;


import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;
import java.util.Map;

public class LoginAction  extends ActionSupport implements SessionAware {
	public static Reader reader; // 파일 스트림을 위함 reader
	public static SqlMapClient sqlMapper; // SqlMapClient API를 사용하기 위한 sqlMapper
											// 객체
 // 파라미터를 저장할 객체
	public MemberDataBean getResultClass() {
		return resultClass;
	}



	private MemberDataBean resultClass = new MemberDataBean();
	

	
	public void setResultClass(MemberDataBean resultClass) {
		this.resultClass = resultClass;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		LoginAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		LoginAction.sqlMapper = sqlMapper;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private Map session;

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	private String id;
	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	private String passwd;

	
	public String execute() throws Exception {
		resultClass = (MemberDataBean) sqlMapper.queryForObject("login", getId());
		

	
			if (resultClass.getPasswd().equals(getPasswd())) {
				session.put("id", resultClass.getId());
				session.put("nick", resultClass.getNick());
				session.put("addr", resultClass.getAddr());
		
			
				
				return SUCCESS;
				
			}
			else
				return ERROR;
	
		
	}
	
	public String logout() throws Exception {
		
		if (session.get("id") != null) {
			session.remove("id");

			
		}
		
		return SUCCESS;
	}
/*	public String login() throws Exception {

		resultClass = (MemberModel) sqlMapper.queryForObject("member.searchpw", getId());
	

		if (resultClass != null) {
			if (resultClass.getPassword().equals(getPassword())) {
				session.put("id", resultClass.getId());
				session.put("password", resultClass.getPassword());
				session.put("admin", resultClass.getId());
				
				
				System.out.println(getId());
				
				
				
				return SUCCESS;
			}
			
		} return ERROR;*/

	public String maincheck() throws Exception{		
		
		return SUCCESS;
	}
	
	public LoginAction() throws IOException {
		// sqlMapConfig.xml 파일의 설정내용을 가져온다.
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	

}
	