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
				alert("������ �Է����ּ���.");
				return false;
			} 
			
			else if(frm.tel_number1.value == ""||frm.tel_number2.value == ""||frm.tel_number3.value == "") {
				alert("��ȭ��ȣ�� �Է����ּ���.");
				return false;
			}
			
			else if(frm.operating_hour.value == "") {
				alert("��ð��� �Է����ּ���.");
				return false;
			}
			
			else if(frm.dow.value == "") { 
				alert("������� �������ּ���.");
				return false;			
			}
			
			else if(frm.price.value == "") { 
				alert("������ �Է����ּ���.");
				return false;			
			}
			
			else if(frm.food_type.value == "") { 
				alert("���������� �������ּ���.");
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
		<td bgcolor="#F4F4F4">�̹������</td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF"><s:file name="upload" theme="simple" />
		<td bgcolor="#F4F4F4">�̹������</td>
	</tr>
	<tr>	
		<td bgcolor="#FFFFFF"><s:file name="upload" theme="simple" />
		<td bgcolor="#F4F4F4">�̹������</td>
	<tr>	
		<%-- <s:if test="resultClass.file_orgname != NULL">&nbsp; *
		<s:property value="resultClass.file_orgname" /> ������ ��ϵǾ� �ֽ��ϴ�. �ٽ� ���ε��ϸ� ������ ������ �����˴ϴ�.
		</s:if> --%>
		</td>
	</tr>
		
</table>

</body>
</html>