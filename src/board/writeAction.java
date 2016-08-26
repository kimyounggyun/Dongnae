package board;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import org.apache.struts2.interceptor.SessionAware;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;


public class writeAction extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private Map session;
	
	private boardVO paramClass;
	private boardVO resultClass;

	
	private int currentPage;
	
	private int no;
	private String subject;
	private String nicname;
	private String id;
	private String content;
	private String file_orgName;
	private String file_savName;
	Calendar today = Calendar.getInstance();
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String fileUploadPath="C:\\Java\\upload\\";
	
	private int ref;
	private int re_step;
	private int re_level;
	

	
	public writeAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}
	
	public String form() throws Exception
	{
		if(session.get("session_id") != null)
		{
			return LOGIN;
		}
		return SUCCESS;
		
	}
	


	public String execute() throws Exception {
		
		paramClass = new boardVO();
		resultClass = new boardVO();
		
		
	
		
		paramClass.setSubject(getSubject());
		paramClass.setNicname(getNicname());
		paramClass.setId(getId());
		paramClass.setContent(getContent());
		paramClass.setRegdate(today.getTime());
		
		
		if(ref == 0)
			sqlMapper.insert("freeboard.insertBoard", paramClass);
		else
			sqlMapper.insert("freeboard.insertBoardReply", paramClass);
		
		if(getUpload() != null)
		{
			resultClass = (boardVO) sqlMapper.queryForObject("freeboard.selectLastNo");
			
			String file_name = "file_" + resultClass.getNo();
			String file_ext = getUploadFileName().substring(
					getUploadFileName().lastIndexOf('.') + 1,
					getUploadFileName().length()
					);
			
			File destFile = new File(fileUploadPath + file_name + "." + file_ext);
			FileUtils.copyFile(getUpload(), destFile);
			
			paramClass.setNo(resultClass.getNo());
			paramClass.setFile_orgname(getUploadFileName());
			paramClass.setFile_savname(file_name + "." +file_ext);
			
			sqlMapper.update("updateFile", paramClass);
		}
		

		return SUCCESS;
	}
	
	

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public boardVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(boardVO paramClass) {
		this.paramClass = paramClass;
	}

	public boardVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(boardVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

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

	public String getFile_orgName() {
		return file_orgName;
	}

	public void setFile_orgName(String fileOrgName) {
		file_orgName = fileOrgName;
	}

	public String getFile_savName() {
		return file_savName;
	}

	public void setFile_savName(String fileSavName) {
		file_savName = fileSavName;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	
	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRe_step() {
		return re_step;
	}

	public void setRe_step(int reStep) {
		re_step = reStep;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int reLevel) {
		re_level = reLevel;
	}	
	
	

}
