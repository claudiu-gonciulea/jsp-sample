<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

	<h4>if else statement</h4>
	<%! int day = 3; %>
	<% if (day == 1 | day == 7) { %>
			<p> Today is weekend</p> 
	<% } else { %>
      		<p> Today is not weekend</p>
	<% } %>
	
	<h4>switch statement</h4>
	<% switch(day) {
		case 0:
   			out.println("It\'s Sunday.");
   			break;
		case 1:
   			out.println("It\'s Monday.");
   			break;
   		case 2:
      		out.println("It\'s Tuesday.");
      		break;
   		case 3:
      		out.println("It\'s Wednesday.");
      		break;
   		case 4:
      		out.println("It\'s Thursday.");
      		break;
   		case 5:
      		out.println("It\'s Friday.");
      		break;
   		default:
      		out.println("It's Saturday.");
   		} %>
   		
	<h4>for loop</h4>
	<%! int fontSize; %>
	<% for (fontSize = 1; fontSize <= 3; fontSize++) { %>
   		<font color="green" size="<%= fontSize %>">
   			JSP Tutorial
    	</font><br />
 	<% } %>
 	
 	<h4>while loop</h4>
 	<% while (fontSize <= 3) { %>
   		<font color="green" size="<%= fontSize %>">
    		JSP Tutorial
   		</font><br />
	<% fontSize++; %>
	<% } %>
	
	<h4>do-while loop</h4>
	
	
	</div>
</section>
</body>
</html>