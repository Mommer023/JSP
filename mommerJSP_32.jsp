<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Taylor Mommer- String Arrays</title>
</head>

<body>
	<h1>String Array Using JSP</h1>
	<%
    	String[] words = {"hello", "goodbye", "Yes", "no", "purple", "green"};
    	out.println("Strings in the Array: <br>");
    // Correct the for-each loop to iterate over the array
    	for (String word : words) {
       	 out.println(word + "<br>");
    	}
	%>
<footer>
<br>
	<a href="mommerJSP_31.jsp">Go to Int Array</a>
</footer>


</body>


</html>