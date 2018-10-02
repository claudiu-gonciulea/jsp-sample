<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en" >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Sample Project</title>
	
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
	<%-- This is an example of JSP comment. It will not be visible in the page source --%>

	<h3>The goal of this project is to demonstrate sample use of JSP</h3>
	<p>Maybe I want to add some words on what is this about
		</p>
		
	<h4>An example of JSP comment</h4>
	${fn:escapeXml("<%-- This is an example of JSP comment. --%>")}
	
	<h4>Get your IP address with JSP</h4>
	${fn:escapeXml("<i> is called italic tag")}
	${fn:escapeXml("<%! int i = 0; %>")}
	<% out.println("Your IP address is " + request.getRemoteAddr()); %>
	
	<h4>Example of some JSP Declarations</h4>
	<%! int i = 0; %>
	<%! int a, b, c = 0; %>
	
	<h4>Example of JSP Expression</h4>
	This is how you wil get today's date:
	${fn:escapeXml("<%= (new java.util.Date()).toLocaleString() %>")}
	
	Today's date is: <%= (new java.util.Date()).toLocaleString() %>
	
	</div>
</section>
</body>
</html>