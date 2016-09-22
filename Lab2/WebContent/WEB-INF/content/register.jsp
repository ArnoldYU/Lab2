<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>用户注册</title>
    <link href="mystyle.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
  <body class="body1"> 
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">用户注册</h1>
    	</div>
    	<form class="form-horizontal" action="registPro" method="post" >
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">User name</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Name" name="user.name">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Password</label>
		    <div class="controls">
		      <input type="password" id="inputPassword" placeholder="Password" name="user.pass">
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn">Finish</button>
		    </div>
		  </div>
		</form>
    </div>
  </body>
</html>
