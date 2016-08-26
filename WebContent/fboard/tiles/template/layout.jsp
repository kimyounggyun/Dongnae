<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><tiles:getAsString name="title"/></title>
</head>
<body>

<table width="100%" cellpadding="0" cellspacing="0">
<tr>
	<td valign="middle" colspan="3">
	<tiles:insertAttribute name="header"/>
	
	</td>
</tr>
<tr>
	<td valign="top"><tiles:insertAttribute name="left"/></td>
	<td valign="top"><tiles:insertAttribute name="body"/></td>
	<td valign="top"><tiles:insertAttribute name="right"/></td>
</tr>
<tr>
	<td colspan="3">
	<tiles:insertAttribute name="footer" />
	</td>
</tr>
</table>
</body>
</html>