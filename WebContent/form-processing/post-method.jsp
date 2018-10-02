<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
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

	<p>A generally more reliable method of passing information to a backend program is the POST method.</p>
	
	<p>This method packages the information in exactly the same way as the GET method, but instead 
		of sending it as a text string after a ? in the URL it sends it as a separate message. 
		This message comes to the backend program in the form of the standard input which you can parse 
		and use for your processing.</p>
		
	<p>JSP handles this type of requests using getParameter() method to read simple parameters and 
		getInputStream() method to read binary data stream coming from the client.</p>

<h1>Using GET Method to Read Form Data</h1>
<ul>
<li><p><b>First Name:</b>
   <%= request.getParameter("first_name")%>
</p></li>
<li><p><b>Last  Name:</b>
   <%= request.getParameter("last_name")%>
</p></li>
</ul>

<form action="post-method.jsp" method="POST">
First Name: <input type="text" name="first_name"> <br />
Last Name: <input type="text" name="last_name" /> <input type="submit" value="Submit" />
</form>

	</div>
</section>
</body>
</html>