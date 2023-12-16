<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome! Admin</h1>
    <form action="ReservationList" method="POST">
		Retrieve Reservation List:
		<br>
		Airline: <input type="text" name="airline_company_id" placeholder="Enter Airline Company Name."> 
		<br>
		Aircraft: <input type="number" name="id" placeholder="Enter Aircraft Number"> 
		<br>
	
	
	</form>
	
	<form action="ReservationList">
			<input type="submit" value="Search">
			</form>	
    <!-- Add a logout link -->
    <a href="logout.jsp">Logout</a>
    
</body>
</html>