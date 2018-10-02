<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Setting HTTP Status Code</title>
	
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
	
	<%
		// Set error code and reason.
   		response.sendError(1207, "Rahat !!!" );
	%>
	
	</div>
</section>
</body>
</html>