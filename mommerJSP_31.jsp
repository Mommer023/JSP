<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Taylor Mommer- Int Array</title>
</head>

<body>
	<h1>Int Array Using JSP</h1>
	<%
		int[] numbers = {1, 2, 3, 7, 4, 8, 10, 54, 10, 9, 109};
		out.println("<h2>Numbers in the Array:</h2>");
		for (int number : numbers) {
			out.println(number + "<br>");
		}

	
		out.println("<h2>Even Numbers:</h2>");
		for (int number : numbers) {
			if (number % 2 == 0) {
				out.println(number + "<br>");
			}
		}

		out.println("<h2>Odd Numbers:</h2>");
		for (int number : numbers) {
			if (number % 2 != 0) {
				out.println(number + "<br>");
			}
		}

	%>
	<footer>
	<br>
		<a href="mommerJSP_32.jsp">Go to String Array</a>
	</footer>
	
</body>


</html>