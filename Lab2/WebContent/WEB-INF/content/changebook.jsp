<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>修改作品信息</title>
    <link href="mystyle.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
  <body class="body1"> 
 	<%
 	String book=request.getParameter("Title");
  	String []bookDb =book.split("\\*");
	%>
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">修改作品信息</h1>
    	</div>
    	<form class="form-horizontal" action="goto_change_book" method="get" >
    	  <div class="control-group">
		    <label class="control-label" for="inputEmail">Title</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Title" readonly="readonly" value="<%=bookDb[0]%>" name="book.title">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">AuthorID</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="authorID" name="book.authorID" value="<%=bookDb[1]%>">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Publiser</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="publiser" name="book.publiser" value="<%=bookDb[2]%>">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">PubliserDate</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="publiserDate" name="book.publiserDate" value="<%=bookDb[3]%>">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">"price"</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="price" name="book.price" value="<%=bookDb[4]%>">
		    </div>
		  </div>
		   <div class="control-group">
		    <label class="control-label" for="inputEmail">ISBN</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="isbn" name="book.isbn" value="<%=bookDb[5]%>">
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
