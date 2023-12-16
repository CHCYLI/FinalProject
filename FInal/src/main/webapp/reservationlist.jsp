<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation List</title>
</head>
<body>
	<c:if test="${not empty ReservationList}">
        <table border="1">
            <thead>
                <tr>
                    <th>Passenger</th>
                    <th>Airline</th>
                    <th>Flight Number</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>seat</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ReservationList" items="${ReservationList}">
                    <tr>
                        <td>${Reservationlist.passenger_number}</td>
                        <td>${Reservationlist.airline}</td>
                        <td>${Reservationlist.flight}</td>
                        <td>${Reservationlist.departure}</td>
                        <td>${Reservationlist.arrival}</td>
                        <td>${Reservationlist.seat}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>