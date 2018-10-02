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

	<h2>The include action Example</h2> 
	<jsp:include page="date.jsp" flush="true" />

	<p>Unlike the include directive, which inserts the file at the time the JSP page is translated
 		into a servlet, the include action inserts the file at the time the page is requested.</p>
 
	</div>
</section>
</body>
</html>