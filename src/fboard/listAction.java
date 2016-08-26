package fboard;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import fboard.boardVO;
import fboard.pagingAction;

public class listAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<boardVO> list = new ArrayList<boardVO>();
	
	private String searchKeyword;
	private int searchNum;
	
	private int currentPage = 1;	
	private int totalCount; 		
	private int blockCount = 5;	
	private int blockPage = 5; 	
	
	private String pagingHtml; 	
	private pagingAction page;
	
	private int num=0;
	
	public listAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String test(){
		return SUCCESS;
	}
	public String execute() throws Exception{
		
		if(getSearchKeyword() != null){
			return search();
		}
		
		list = sqlMapper.queryForList("selectAll");
		totalCount = list.size(); //boardVO객체가 몇개인지 반환
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, num, "");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount()+1;
		
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public String search() throws Exception{
		if(searchNum==0){
			list = sqlMapper.queryForList("selectSearchW", "%"+getSearchKeyword()+"%");
		}
	
		if(searchNum==1){
			list=sqlMapper.queryForList("selectSearchS", "%"+getSearchKeyword()+"%");
		}
		
		if(searchNum==2){
			list=sqlMapper.queryForList("selectSearchC", "%"+getSearchKeyword()+"%");
		}
		
		if(searchNum==3){
			list=sqlMapper.queryForList("selectSearchT", "%"+getSearchKeyword()+"%");
		}
		
		totalCount = list.size();
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml=page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount()<totalCount)
			lastCount = page.getEndCount() +1;
		
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public int getSearchNum() {
		return searchNum;
	}

	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}

	public List<boardVO> getList() {
		return list;
	}

	public void setList(List<boardVO> list) {
		this.list = list;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public pagingAction getPage() {
		return page;
	}

	public void setPage(pagingAction page) {
		this.page = page;
	}
}