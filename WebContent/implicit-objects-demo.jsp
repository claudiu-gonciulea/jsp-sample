<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.io.*,java.util.*" %>

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

	<h2>This page is demonstratin the JSP Implicit Objects</h2>
	
	<p>In JSP there are 9 automatically defined variables. These are called <strong>implicit objects</strong>.</p>
	
	<h4>request</h4>
	<% out.println(" " + request.getCharacterEncoding()); %> <br/>
	<% out.println(" " + request.getHeaderNames()); %> <br/>
	<% out.println("Locale: " + request.getLocale()); %> <br/>
	<% out.println(" " + request.getAuthType()); %> <br/>
	<% out.println(" " + request.getMethod()); %> <br/>
	<% out.println(" " + request.getPathInfo()); %> <br/>
	<% out.println(" " + request.getProtocol()); %> <br/>
	<% out.println(" " + request.getRequestURI()); %> <br/>
	<% out.println("Is request secure: " + request.isSecure()); %> <br/>
	<% out.println("Server Port: " + request.getServerPort()); %> <br/>
	
	<h2>HTTP Header Request Example</h2>
	<table width="100%" border="1" align="center"> 
		<tr bgcolor="#949494">
			<th>Header Name</th>
			<th>Header Value(s)</th>
		</tr>
		<%
		   	Enumeration headerNames = request.getHeaderNames();
		   	while(headerNames.hasMoreElements()) {
				String paramName = (String) headerNames.nextElement(); 
				out.print("<tr><td>" + paramName + "</td>\n"); 
				String paramValue = request.getHeader(paramName); 
				out.println("<td> " + paramValue + "</td></tr>\n");
			} 
		%>
	</table>
	
	<h4>response</h4>
	<p>When a Web server responds to a HTTP request, the response typically consists of a status line, 
		some response headers, a blank line, and the document.</p>
		
	<p>The response object is an instance of a javax.servlet.http.HttpServletResponse object.</p>
	
	<table width="100%" border="1" align="center"> 
		<tr bgcolor="#949494">
			<th>Method</th>
			<th>Description</th>
		</tr>
		<tr>
			<td>String encodeRedirectURL(String url)</td>
			<td>Encodes the specified URL for use in the sendRedirect method or, if encoding is not needed, returns the URL unchanged.</td>
		</tr>
		<tr>
			<td>String encodeURL(String url)</td>
			<td>Encodes the specified URL by including the session ID in it, or, if encoding is not needed, returns the URL unchanged.</td>
		</tr>
		<tr>
			<td>boolean isCommitted()</td>
			<td>Returns a boolean indicating if the response has been committed.</td>
		</tr>
		<tr>
			<td>void sendError(int sc, String msg)</td>
			<td>Sends an error response to the client using the specified status.</td>
		</tr>
		<tr>
			<td>void setCharacterEncoding(String charset)</td>
			<td>Sets the character encoding (MIME charset) of the response being sent to the client, for example, to UTF-8.</td>
		</tr>
		<tr>
			<td>void setStatus(int sc)</td>
			<td>Sets the status code for this response.</td>
		</tr>
	</table>
	
	<h2>Auto Refresh Header Example</h2>
 	<%
    	// Set refresh, autoload time as 5 seconds
    	response.setIntHeader("Refresh", 5);
    
		// Get current time
    	Calendar calendar = new GregorianCalendar();
    	String am_pm;
    
    	int hour = calendar.get(Calendar.HOUR);
    	int minute = calendar.get(Calendar.MINUTE);
    	int second = calendar.get(Calendar.SECOND);
    	
    	if(calendar.get(Calendar.AM_PM) == 0)
       		am_pm = "AM";
   		else
			am_pm = "PM";

    	String CT = hour + " : " + minute + " : " + second + " " + am_pm; 
    	out.println("Current Time is: " + CT + "\n");
 	%>
	
	
	<h4>out</h4>
	<h4>session</h4>
	<h4>application</h4>
	<h4>config</h4>
	<h4>pageContext</h4>
	<h4>page</h4>
	<h4>Exception</h4>

	</div>
</section>
</body>
</html>