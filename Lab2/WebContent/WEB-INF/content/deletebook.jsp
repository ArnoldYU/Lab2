<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>删除作品信息</title>
    <link href="mystyle.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script language=javascript>
		function  Verify(){
			 if(confirm('确定删除?')){
			       continue;
			  }
		}
	</script>
  </head>
  
  <body class="body1"> 
  	<%
	String book=request.getParameter("Title");
  	String []bookDb =book.split("\\*");
  	//System.out.print(bookDb);

	%>
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">删除作品信息</h1>
    	</div>
    	<form class="form-horizontal" action="goto_delete_book" method="post">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Title</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Title" readonly="readonly " value="<%=bookDb[0]%>" name="book.title">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">AuthorID</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="AuthorID" readonly="readonly " value="<%=bookDb[1]%>" name="book.authorID">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Publiser</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Publiser" readonly="readonly " value="<%=bookDb[2]%>" name="book.publiser">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">PubliserDate</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="PubliserDat" readonly="readonly " value="<%=bookDb[3]%>" name="book.publiserDate">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">"price"</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="price" readonly="readonly " value="<%=bookDb[4]%>" name="book.price">
		    </div>
		  </div>
		   <div class="control-group">
		    <label class="control-label" for="inputEmail">ISBN</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="ISBN" readonly="readonly " value="<%=bookDb[5]%>" name="book.isbn">
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn" onclick="return confirm('确认删除');">Delete</button>    
		      <a href="Delete_or_Change_Book" class="btn">返回</a>
		    </div>
		  </div>
		</form>
    </div>
  </body>
</html>
