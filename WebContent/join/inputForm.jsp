<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<title>회원가입</title>

<script language="JavaScript">
   
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.id.value) {
            alert("ID를 입력하세요");
            return false;
        }
       
        if(!userinput.passwd.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.passwd.value != userinput.passwd2.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
      
        if(!userinput.username.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
        if(!userinput.usernick.value) {
            alert("사용자 닉네임을 입력하세요");
            return false;
        }
        if(!userinput.useremail.value) {
            alert("사용자 이메일을 입력하세요");
            return false;
        }
        if(!userinput.userphone.value) {
            alert("사용자 전화번호을 입력하세요");
            return false;
        }
        if(!userinput.useraddr.value) {
            alert("사용자 주소을 입력하세요");
            return false;
        }
    }
    // 아이디 중복 여부를 판단
    function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "confirmId.jsp?id=" + userinput.id.value ;
       
        // 새로운 윈도우를 엽니다.
        open(url, "confirm",
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>

<form method="post" action="joinpro.action" name="userinput" onSubmit="return checkIt()">
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr>
    <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>회원가입</b></font></td>
    </tr>
    <tr>
      <td width="200">아이디</td>
      <td width="400">
        <input type="text" name="id" size="10" maxlength="12">
        <input type="button" name="confirm_id" value="ID중복확인" OnClick="openConfirmid(this.form)">
      </td>
    </tr>
   <tr>
      <td width="200">닉네임</td>
      <td width="400">
        <input type="text" name="nick" size="10" maxlength="12">
        <input type="button" name="confirm_nick" value="닉네임중복확인" OnClick="openConfirmnick(this.form)">
      </td>
    </tr>
    <tr>
      <td width="200"> 비밀번호</td>
      <td width="400" >
        <input type="password" name="passwd" size="15" maxlength="12">
      </td>
    <tr> 
      <td width="200">비밀번호 확인</td>
      <td width="400">
        <input type="password" name="passwd2" size="15" maxlength="12">
      </td>
    </tr>
    <tr>
      <td width="200">이름</td>
      <td width="400">
        <input type="text" name="name" size="15" maxlength="10">
      </td>
    </tr>
    <tr>
      <td width="200">휴대전화번호</td>
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
         <td width="200">동네선택</td>
		<td colspan="5">
				<select name="addr">
					<option value="강동">강동</option>
					<option value="강서">강서</option>
					<option value="강남">강남</option>
					<option value="강북">강북</option>
				</select>
		</td>
	</tr>
    <tr>
      <td width="200">성별</td>
      <td width="400">
       	 <input type="radio" name="male" value="true">남성
       	<input type="radio" name="female" value="false">여성
      </td>
    </tr>
     <tr>
      <td width="200">생년월일</td>
      <td width="400">
        <input type="text" name="birth" size="12" maxlength="12">
      </td>
    </tr>
     <tr>
      <td width="200">사업자번호</td>
      <td width="400">
        <input type="text" name="linum" size="20" maxlength="20">
      </td>
    </tr>
     <tr>
      <td width="200">사업자등록증</td>
      <td width="400">
		<input type="file" name="lipic" value="첨부파일" OnClick=>

      </td>
    </tr>
    
    <tr>
      <td colspan="2" align="center">
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
          <input type="button" value="가입안함" onclick="javascript:window.location='main.jsp'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>