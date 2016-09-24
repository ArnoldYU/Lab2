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
	String booktitle=request.getParameter("Title");
 	booktitle  = new String(booktitle.getBytes("ISO8859-1"),"UTF-8");
	%>
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">修改作品信息</h1>
    	</div>
    	<form class="form-horizontal" action="goto_change_book" method="get" >
    	  <div class="control-group">
		    <label class="control-label" for="inputEmail">Title</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Title" readonly="readonly" value="<%=booktitle%>" name="book.title">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">AuthorID</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="AuthorID" name="book.authorID">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Publiser</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Publiser" name="book.publiser">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">PubliserDate</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="PubliserDat" name="book.publiserDate">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">"price"</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="price" name="book.price">
		    </div>
		  </div>
		   <div class="control-group">
		    <label class="control-label" for="inputEmail">ISBN</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="ISBN" name="book.isbn">
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
