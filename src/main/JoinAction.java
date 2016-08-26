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
	public static Reader reader;  // ���� ��Ʈ���� ���� reader
	public static SqlMapClient sqlMapper; // SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü

	private MemberDataBean paramClass;  // �Ķ���͸� ������ ��ü

	Calendar today = Calendar.getInstance();





	
	
	
	//Preparable�������̽��� prepare ����
	public void prepare() throws Exception {
		paramClass = new MemberDataBean();
		paramClass.setRegdate(today.getTime());
	}	
	//ModelDriven �������̽��� getModel ����
	public Object getModel() {
		return paramClass;
	}
	//�ش� ������Ƽ���� �����Ŵ
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
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml ������ ������ sqlMapper ��ü ����
		reader.close();
	}
	
	
	
	public String confirmid(){
		return SUCCESS;
	}
	
	public String confirmnick(){
		return SUCCESS;
	}
	
	
}
