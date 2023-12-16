<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Waiting List Results</title>
</head>
<body>
	<c:if test="${not empty SearchList}">
        <table border="1">
            <thead>
                <tr>
                    <th>Passenger</th>
                    <th>Airline</th>
                    <th>Flight Number</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="SearchList" items="${SearchList}">
                    <tr>
                        <td>${searchList.passenger_number}</td>
                        <td>${searchList.airline}</td>
                        <td>${searchList.flight}</td>
                        <td>${searchList.departure}</td>
                        <td>${searchList.arrival}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>