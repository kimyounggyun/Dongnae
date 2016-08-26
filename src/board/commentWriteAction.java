package board;


import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class commentWriteAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private cboardVO paramClass;
	private cboardVO resultClass;

	private int no;
	private int currentPage;

	private String nicname;
	private String id;
	private String content;
	private int originno;

	Calendar today = Calendar.getInstance();

	public commentWriteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}
	
	public String form() throws Exception
	{
		return SUCCESS;
		
	}

	public String execute() throws Exception {
		
		paramClass = new cboardVO();
		resultClass = new cboardVO();
		
		paramClass.setOriginno(getOriginno());
		paramClass.setNicname(getNicname());
		paramClass.setId(getId());	
		
		paramClass.setContent(getContent());
		paramClass.setRegdate(today.getTime());
		
		sqlMapper.insert("freeboard.insertComment", paramClass);
		

		return SUCCESS;
	}

	public cboardVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(cboardVO paramClass) {
		this.paramClass = paramClass;
	}

	public cboardVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(cboardVO resultClass) {
		this.resultClass = resultClass;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}


	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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


	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public int getOriginno() {
		return originno;
	}

	public void setOriginno(int originno) {
		this.originno = originno;
	}

}
