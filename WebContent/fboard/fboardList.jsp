<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">

			<tr align="right">
    			<td width="400">
    			<input type="button" value="�����">
				</td>
				<td width="10">
    			<input type="button" value="��õ��">
				</td>
				<td width="10">
    			<input type="button" value="�̸���">
				</td>
    		</tr>
   		<s:iterator value="list" status="stat">
      		<s:url id="viewURL" action="viewAction">
      			<s:param name="no">
      				<s:property value="no"/>
      			</s:param>
      			<s:param name="currentPage">
      				<s:property value="currentPage"/>
      			</s:param>
      		</s:url>
    		<table>
      	 	 <tr bgcolor="#FFFFFF"  align="center">
        		<%-- <td><s:property value="no" /></td> --%>
        		<td rowspan="5" align="left"> &nbsp;<s:property value="subject" /></td>
        		<td width="400" align="right">�ۼ���:<s:property value="nicname" /></td>
				<td>�����:<s:property value="regdate" /></td>
      		 </tr>
      		 <tr bgcolor="#FFFFFF"  align="center">
      		 	<td>��ȣ��:<s:property value="subject" /></td>
      		 </tr>
      		 <tr bgcolor="#FFFFFF"  align="center">
      		 	<td>��������:<s:property value="food_type" /> </td>
      		 	<td> ���:<s:property value="com_number" /></td>
      		 </tr>
      		  <tr bgcolor="#FFFFFF"  align="center">
      		 	<td><input type="button" value="��õ"><s:property value="good_number" />   
      		 	<input type="button" value="����õ">   <s:property value="bad_number" /></td>
      		 </tr>
      		 
      		 <s:url id="viewURL" action="viewAction">
                <s:param name="num">
                    <s:property value="num" />
                </s:param>
                <s:param name="currentPage">
                    <s:property value="currentPage" />
                </s:param>
            </s:url>
      		 <tr bgcolor="#FFFFFF"  align="center">
      		 	<td align="right"><s:a href="%{viewURL}"><img src="./img/scrap.jpg" alt="scr"></s:a></td>
      		 	<td><s:a href="%{viewURL}"><input type="button" value="�ڼ��� ����"></s:a></td>
      		 </tr>
      		 
      		 
      		<tr bgcolor="#777777">
        		<td height="1" colspan="5"></td>
      	    </tr>
      	    </table>
	  	</s:iterator>
	  	
	  	<!--       		    <tr>
 <td> <a href='listAction2.action?searchKeyword=KPOP'><img
              src="../image/K-POP.png" width=100 height=40 style="border-style:none;" alt="KPOP"></a>
<a href='listAction2.action?searchKeyword=POP'><img
              src="../image/POP.png" width=100 height=40 style="border-style:none;" alt="POP"></a>
<a href='listAction2.action?searchKeyword=JPOP'><img
              src="../image/J-POP.png" width=100 height=40 style="border-style:none;" alt="JPOP"></a>
<a href='listAction2.action?searchKeyword=OST'><img
              src="../image/OST.png" width=100 height=40 style="border-style:none;" alt="OST"></a>
<a href='listAction2.action?searchKeyword=CCM'><img
              src="../image/CCM.png" width=100 height=40 style="border-style:none;"alt="CCM"></a></td> 
    </tr> -->
      		
      		<%-- <tr align="right">
    			<td width="30">
    			<input type="button" value="�����" class="inputb" onClick="javascript:location.href='writeForm.action?currentPage=<s:property value="currentPage" />';">
				</td>
    		</tr> --%>
	  	
    		
		<tr>	   
			<s:if test="list.size() <= 0">
			<tr bgcolor="#FFFFFF"  align="center">
				<td colspan="5">��ϵ� �Խù��� �����ϴ�.</td>
            </tr>						
	      	<tr bgcolor="#777777">
      			<td height="1" colspan="5"></td>
    	    </tr>	
    		</s:if>
		</tr>
		
		<tr align="center">
    		<td colspan="5"><s:property value="pagingHtml"  escape="false" /></td>
    	</tr>
    	
    	<tr align="right">
    		<td colspan="5">
    		<input type="button" value="�۾���" class="inputb" onClick="javascript:location.href='writeForm.action?currentPage=<s:property value="currentPage" />';">
			</td>
    	</tr>
    	
    	<tr align="center">
			<td colspan="5">
				<form>
					<select name="searchNum" >
						<option value="0">��ȣ��</option>
						<option value="2">����</option>
					</select>
					<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20" />
					<input name="submit" type="submit" value="�˻�" class="inputb">
				</form>
			</td>
		</tr>
</table>

</body>
</html>