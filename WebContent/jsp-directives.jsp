<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	<link rel="stylesheet" href="./assets/css/style.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="./assets/css/menu.css">
</head>
<body>

<!-- include menu.jsp -->
<jsp:include page="./assets/menu.jsp" />

<section>
	<div class="container">

	<p>JSP directives provide directions and instructions to the container, 
		telling it how to handle certain aspects of the JSP processing.</p>
		
		It usually have the following form: </%@ directive attribute="value" %>
		
	<p>There are three type of directive tags</p>
	<ul>
		<li>page</li>
		<li>include</li>
		<li>taglib</li>
	</ul>

	<h1 style="color:red;">Read more about directive and each of their attribute.</h1>
	<p>Chapter 6 page 34.</p>

	</div>
</section>
</body>
</html>