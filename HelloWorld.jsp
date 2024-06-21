<%@ page language="java" contentType="text/html"%>
<html>
<head>
    <title>Hello World dynamic HTML</title>
</head>
<body>
    Hello World!

    <%-- Getting User-Agent --%>
    <br>
    <% String userAgent = request.getHeader("User-Agent"); %>
    <%= "<br/>User-agent: " + userAgent %>
    
    <%-- Getting Current date and time --%>
    <br><br>Today is <em><%= new java.util.Date() %></em>
    
    <br><br>
    <%-- Getting Module number from stored variable --%>
    <% int moduleNumber = 2; %>
    <%= "This is Module # " + moduleNumber %>
    
    <%-- Getting Name from string variable --%>
    <% String myName = "Taylor Mommer"; %>
    <br><br><header><%= "This page was Created By: " + myName %></header>
    
    <%-- Calculation using scriptlets --%>
    <% int x = 30; 
    	int y = 12; 
    	int sum = x + y; 
    	%>
    <p>Sum of <%= x %> and <%= y %> = <%= sum %></p>
    
</body>
</html>
