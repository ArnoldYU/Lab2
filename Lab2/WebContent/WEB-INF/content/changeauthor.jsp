<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>更改作者信息</title>
    <link href="mystyle.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
  <body class="body1"> 
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">登记作者信息</h1>
    	</div>
    	<form class="form-horizontal" action="" method="post" >
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">AuthorID</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="AuthorID" name="author.AuthorID">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">name</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Name" name="author.name">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Age</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Age" name="author.Age">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">"Country"</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Country" name="author.Country">
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn">Change</button>    
		    </div>
		  </div>
		</form>
    </div>
  </body>
</html>
