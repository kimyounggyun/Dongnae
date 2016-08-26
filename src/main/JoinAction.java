package main;

import java.io.IOException;


import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import member.MemberDataBean;

import java.io.Reader;
import java.util.Calendar;



import com.ibatis.sqlmap.client.SqlMapClient;


public class JoinAction extends ActionSupport implements Action, ModelDriven, Preparable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static Reader reader;  // 파일 스트림을 위한 reader
	public static SqlMapClient sqlMapper; // SqlMapClient API를 사용하기 위한 sqlMapper 객체

	private MemberDataBean paramClass;  // 파라미터를 저장할 객체

	Calendar today = Calendar.getInstance();





	
	
	
	//Preparable인터페이스의 prepare 구현
	public void prepare() throws Exception {
		paramClass = new MemberDataBean();
		paramClass.setRegdate(today.getTime());
	}	
	//ModelDriven 인터페이스의 getModel 구현
	public Object getModel() {
		return paramClass;
	}
	//해당 프로퍼티들을 저장시킴
	public void setParamClass(MemberDataBean paramClass) {
		this.paramClass = paramClass;
	}
	
	
	
	
	public String execute()throws Exception{
		sqlMapper.insert("memberInsert", paramClass);
		
		
		return SUCCESS;
	}
	
	
	public String inputform(){
		return SUCCESS;
	}
	
	
	
	public JoinAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml 내용을 적용한 sqlMapper 객체 생성
		reader.close();
	}
	
	
	
	public String confirmid(){
		return SUCCESS;
	}
	
	public String confirmnick(){
		return SUCCESS;
	}
	
	
}
