<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Waiting List Results</title>
</head>
<body>
	<c:if test="${not empty AirportList}">
        <table border="1">
            <thead>
                <tr>
                    <th>Flight</th>
                    <th>Airports</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="AirportList" items="${AirportList}">
                    <tr>
                        <td>${AirportList.flight_number}</td>
                        <td>${AirportList.airports_id}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>