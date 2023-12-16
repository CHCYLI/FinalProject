<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome! Representative</h1>
    <form action="CustomerWaitingList" method="POST">
		Retrieve Passenger Waiting List:
		<br>
		Airline: <input type="text" name="airline_company_id" placeholder="Enter Airline Company Name."> 
		<br>
		Aircraft: <input type="number" name="id" placeholder="Enter Aircraft Number"> 
		<br>
		Departure Date: <input type="date" name="departure_time" placeholder="Departing Date"> 
		<br>
		Arrival Date: <input type="date" name="arrival_time" placeholder="Arrival Date"> 
		<br>
		Passenger ID: <input type="text" name="passenger_number" placeholder="Passenger ID">
	
	
	</form>
	
	<form action="CustomerWaitingList">
			<input type="submit" value="Search">
			</form>	
			
	<form action="AirportList" method="POST">
		Retrieve Passenger Waiting List:
		<br>
		Departure Airport: <input type="text" name="departure_airport" placeholder="Departure Airport Name"> 
		<br>
		Arrival Airport: <input type="text" name="destination_airport" placeholder="Arrival Airport Number"> 
		<br>
		
	<form action="AirportList">
			<input type="submit" value="Search">
			</form>	
	
	</form>
	
	<form action="CreateReservation" method="POST">
		Create Reservation:
		<br>
		Passenger ID: <input type="text" name="passenger_number" placeholder="Passenger ID"> 
		<br>
		Destination: <input type="text" name="destination_airport" placeholder="Arrival Airport Number"> 
		<br>
		Seat: <input type="text" name="seat_number" placeholder="Seat">
		<br>
		Airline: <input type="text" name="airline_company_id" placeholder="Enter Airline Company Name."> 
		<br>
		Aircraft: <input type="number" name="id" placeholder="Enter Aircraft Number"> 
		<br>
		
	<form action="CreateReservation">
			<input type="submit" value="Create">
			</form>	
	
	</form>
    
    
    <!-- Add a logout link -->
    <a href="logout.jsp">Logout</a>
    
</body>
</html>