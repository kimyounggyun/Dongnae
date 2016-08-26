<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%-- <title><tiles:getAsString name="title" /></title> --%>
<link rel="stylesheet" href="/dongnae/fboard/common/css/css.css" type="text/css">
</head>
<body>
  	<table width="600" border="0" cellspacing="0" cellpadding="2">
  		<tr>
  			<td align="center"><font size='5'color="blue">우리동네</font></td>
  		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
  	
  	<table width="600" border="0" cellspacing="0" cellpadding="2">
  		<tr align="center" bgcolor="#F3F3F3">
  			<td align="right">
  			<form name="login" action="">
  			아이디:<input type=text name="member_id">
  			비밀번호:<input type=password name="member_pw">
  			<input type="submit" value="로그인">
  			</form>
  			</td>
  			
  		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
  	
  	<table width="600" border="0" cellspacing="0" cellpadding="2">
  		<tr align="center" bgcolor="#F3F3F3">
  			<td width="100"><span style="cursor:pointer;"><strong>강남▶</strong></span></td>
			<td width="250"><span style="cursor:pointer;">정보▼</span></td>
        	<td width="250"><span style="cursor:pointer;">커뮤니티▼</span></td>
    	</tr>
    	
    	<tr bgcolor="blue">
        		<td height="1" colspan="5"></td>
      	</tr>
      </table>

</body>
</html>