<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<SCRIPT type="text/javascript">
		function validation() {
		
			var frm = document.forms(0);
			
			if(frm.subject.value == "") {
				alert("제목을 입력해주세요.");
				return false;
			} 
			
			else if(frm.tel_number1.value == ""||frm.tel_number2.value == ""||frm.tel_number3.value == "") {
				alert("전화번호를 입력해주세요.");
				return false;
			}
			
			else if(frm.operating_hour.value == "") {
				alert("운영시간을 입력해주세요.");
				return false;
			}
			
			else if(frm.dow.value == "") { 
				alert("운영요일을 선택해주세요.");
				return false;			
			}
			
			else if(frm.price.value == "") { 
				alert("가격을 입력해주세요.");
				return false;			
			}
			
			else if(frm.food_type.value == "") { 
				alert("음식종류를 선택해주세요.");
				return false;			
			} 
			
			return true;
		}
		
		$(document).ready(function(){
			 $("#content").cleditor();
		 });
		
	</SCRIPT>
</head>
<body>

<table>
	<tr>
		
		<td bgcolor="#FFFFFF"><s:file name="upload" theme="simple" /> 
		<td bgcolor="#F4F4F4">이미지등록</td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF"><s:file name="upload" theme="simple" />
		<td bgcolor="#F4F4F4">이미지등록</td>
	</tr>
	<tr>	
		<td bgcolor="#FFFFFF"><s:file name="upload" theme="simple" />
		<td bgcolor="#F4F4F4">이미지등록</td>
	<tr>	
		<%-- <s:if test="resultClass.file_orgname != NULL">&nbsp; *
		<s:property value="resultClass.file_orgname" /> 파일이 등록되어 있습니다. 다시 업로드하면 기존의 파일은 삭제됩니다.
		</s:if> --%>
		</td>
	</tr>
		
</table>

</body>
</html>