<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index App Login</title>
</head>

<body>

<div class="container" style="align: center;">
<form action = "ControllerAndCookieCreatorServlet" method="post">
	<fieldset style="background-color: #f2f2f2; padding: 20px; padding-left: 50px; width: 60%;">
  	<legend><b>Member Login:</b></legend>
	<input type="text" name="userName" style="width: 90%;"><br/>
	<a style="font-size:12px;">User name</a><br/><br/>
	<input type="email" name="mailAdress" style="width: 90%;"><br/>
	<a style="font-size:12px;">Mail adress</a><br/><br/>
	<input type="password" name="password" style="width: 90%;"  maxlength="15"><br/>
	<a style="font-size:12px;">Password</a><br/><br/><br/>
	<input type="submit" value="Login">
	</fieldset>
</form>
</div>

</body>
</html>