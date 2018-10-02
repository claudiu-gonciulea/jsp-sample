<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Using GET Method to Read Form Data</title>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	<link rel="stylesheet" href="../assets/css/style.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="../assets/css/menu.css">
</head>
<body>

<!-- include menu.jsp -->
<jsp:include page="../assets/menu.jsp" />

<section>
	<div class="container">

	<p>The GET method sends the encoded user information appended to the page request. 
		The page and the encoded information are separated by the ? character</p>

	<p>The GET method is the default method to pass information from the browser 
		to the web server and it produces a long string that appears in your browser's Location:box. 
		It is recommended that the GET method is better not used if you have password or 
		other sensitive information to pass to the server.</p>
		
	<p>The GET method has size limitation: only 1024 characters can be in a request string.</p>
	
	<p>This information is passed using QUERY_STRING header and will be accessible through QUERY_STRING environment 
		variable which can be handled using getQueryString() and getParameter() methods of request object.</p>
		
	<h1>Using GET Method to Read Form Data</h1>
	<p>Use this URL: <a href="http://localhost:8080/jsp-sample/form-processing/get-method.jsp?first_name=Ion&last_name=Gigi">
		http://localhost:8080/jsp-sample/form-processing/get-method.jsp?first_name=Ion&last_name=Gigi</a></p>
	<ul>
		<li><p><b>First Name:</b>
   			<%= request.getParameter("first_name")%>
			</p></li>
		<li><p><b>Last  Name:</b>
		   <%= request.getParameter("last_name")%>
			</p></li>
	</ul>
	
	<form action="get-method.jsp" method="GET">
		First Name: <input type="text" name="first_name"> <br />
		Last Name: <input type="text" name="last_name" /> <br />
		<input type="submit" value="Submit" />
	</form>
	
	</div>
</section>
</body>
</html>