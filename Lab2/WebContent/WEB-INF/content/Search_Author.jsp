<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<html>
  <head>
    <meta charset="utf-8">
    <title>寻找作者</title>
    <link href="mystyle.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body class="body2">
    <div class="centerOfMenu">
    	<%@ include file="menu_model.jsp" %>
    	<form action="search_author_all_book" method="post">
    		<div class="search_1">
				<div class="input-append">
			  		<input class="span2" id="appendedInputButton" type="text" name="author.AuthorID">
			 		<button type="submit" class="btn">Search Author's works</button>
				</div>
			</div>	
		</form>
    </div>
  
  
  </body>
</html>
