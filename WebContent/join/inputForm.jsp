<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<title>ȸ������</title>

<script language="JavaScript">
   
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.id.value) {
            alert("ID�� �Է��ϼ���");
            return false;
        }
       
        if(!userinput.passwd.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(userinput.passwd.value != userinput.passwd2.value)
        {
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }
      
        if(!userinput.username.value) {
            alert("����� �̸��� �Է��ϼ���");
            return false;
        }
        if(!userinput.usernick.value) {
            alert("����� �г����� �Է��ϼ���");
            return false;
        }
        if(!userinput.useremail.value) {
            alert("����� �̸����� �Է��ϼ���");
            return false;
        }
        if(!userinput.userphone.value) {
            alert("����� ��ȭ��ȣ�� �Է��ϼ���");
            return false;
        }
        if(!userinput.useraddr.value) {
            alert("����� �ּ��� �Է��ϼ���");
            return false;
        }
    }
    // ���̵� �ߺ� ���θ� �Ǵ�
    function openConfirmid(userinput) {
        // ���̵� �Է��ߴ��� �˻�
        if (userinput.id.value == "") {
            alert("���̵� �Է��ϼ���");
            return;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "confirmId.jsp?id=" + userinput.id.value ;
       
        // ���ο� �����츦 ���ϴ�.
        open(url, "confirm",
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>

<form method="post" action="joinpro.action" name="userinput" onSubmit="return checkIt()">
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr>
    <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>ȸ������</b></font></td>
    </tr>
    <tr>
      <td width="200">���̵�</td>
      <td width="400">
        <input type="text" name="id" size="10" maxlength="12">
        <input type="button" name="confirm_id" value="ID�ߺ�Ȯ��" OnClick="openConfirmid(this.form)">
      </td>
    </tr>
   <tr>
      <td width="200">�г���</td>
      <td width="400">
        <input type="text" name="nick" size="10" maxlength="12">
        <input type="button" name="confirm_nick" value="�г����ߺ�Ȯ��" OnClick="openConfirmnick(this.form)">
      </td>
    </tr>
    <tr>
      <td width="200"> ��й�ȣ</td>
      <td width="400" >
        <input type="password" name="passwd" size="15" maxlength="12">
      </td>
    <tr> 
      <td width="200">��й�ȣ Ȯ��</td>
      <td width="400">
        <input type="password" name="passwd2" size="15" maxlength="12">
      </td>
    </tr>
    <tr>
      <td width="200">�̸�</td>
      <td width="400">
        <input type="text" name="name" size="15" maxlength="10">
      </td>
    </tr>
    <tr>
      <td width="200">�޴���ȭ��ȣ</td>
      <td width="400">
        <input type="text" name="phone" size="20" maxlength="20">
      </td>
    </tr>
    <tr>
      <td width="200">E-Mail</td>
      <td width="400">
        <input type="text" name="email" size="40" maxlength="30">
      </td>
    </tr>
  
    <tr align="left">
         <td width="200">���׼���</td>
		<td colspan="5">
				<select name="addr">
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="����">����</option>
				</select>
		</td>
	</tr>
    <tr>
      <td width="200">����</td>
      <td width="400">
       	 <input type="radio" name="male" value="true">����
       	<input type="radio" name="female" value="false">����
      </td>
    </tr>
     <tr>
      <td width="200">�������</td>
      <td width="400">
        <input type="text" name="birth" size="12" maxlength="12">
      </td>
    </tr>
     <tr>
      <td width="200">����ڹ�ȣ</td>
      <td width="400">
        <input type="text" name="linum" size="20" maxlength="20">
      </td>
    </tr>
     <tr>
      <td width="200">����ڵ����</td>
      <td width="400">
		<input type="file" name="lipic" value="÷������" OnClick=>

      </td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
          <input type="submit" name="confirm" value="��   ��" >
          <input type="reset" name="reset" value="�ٽ��Է�">
          <input type="button" value="���Ծ���" onclick="javascript:window.location='main.jsp'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>