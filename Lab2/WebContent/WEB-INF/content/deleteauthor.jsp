<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>删除作者信息</title>
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
	String author1=request.getParameter("Allauthor");
  	String []authorID =author1.split("\\*");
  	System.out.print(authorID);

	%>
    <div class="center">
    	<div class="word">
    		<h1 style="color:#F08080">删除作者信息</h1>
    	</div>
    	<form class="form-horizontal" action="goto_delete_author" method="post">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">AuthorID</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="AuthorID" name="author.AuthorID" readonly="readonly " value="<%=authorID[0]%>"/>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">name</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Name" name="author.name" readonly="readonly " value="<%=authorID[1]%>"/>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Age</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Age" name="author.age" readonly="readonly " value="<%=authorID[2]%>"/>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">"Country"</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Country" name="author.country" readonly="readonly " value="<%=authorID[3]%>"/>
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn" onclick="return confirm('确认删除');">Delete</button>    
		      <a href="Delete_or_Change_Author" class="btn">返回</a>
		    </div>
		  </div>
		</form>
    </div>
  </body>
</html>
