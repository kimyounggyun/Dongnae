<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> </title>


</head>
<center>
<body>
     <table width="600" border="0" cellspacing="0" cellpadding="2">
        <tr>
           <td align="center"><a href="main.action"><img src="./img/mainl.jpg"></img></a></td>
        </tr>
        <tr>
           <td height="20"></td>
        </tr>
     </table>
     	<s:if test='%{session.id == null}'>
     <table width="600" border="0" cellspacing="0" cellpadding="2">
        <tr align="center" bgcolor="#F3F3F3">
           <td align="right">아이디:<input type=text name="id"> 비밀번호:<input type=password name="passwd"> <input type="submit" value="로그인"></td>

        </tr>
        <td align="right"><a href="join.action">회원가입</a>&nbsp;|&nbsp;<a href="ipfind.action">아이디/비밀번호 찾기</a></td>
        <tr>
           <td height="20"></td>
        </tr>
     </table>
     </s:if>
     <s:elseif test='%{session.admin == "admin"}'>  
     
     </s:elseif>
      <s:elseif test='%{session.id != null}'>
      </s:elseif>



</body>
</center>

</html>