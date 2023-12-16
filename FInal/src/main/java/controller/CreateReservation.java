package controller;

public class CreateReservation {
	
	public class Reservationlist {
		private String airline;
		private int flight;
		private String departure;
		private String arrival;
		private String passenger_number;
		private String seat;
		
		public Reservationlist(String passengerNum, String airlinecompany, int flightnumber, String departuretime, String arrivaltime
				, String seatNum) {
			this.airline = airlinecompany;
			this.flight = flightnumber;
			this.departure = departuretime;
			this.arrival = arrivaltime;
			this.passenger_number = passengerNum;
			this.seat = seatNum;
		}
		
		public void setSeat(String seatNum) {
			seat = seatNum;
		}
		
		public String getSeat() {
			return seat;
		}
		
		public void setPassenger (String passenger) {
			passenger_number = passenger;
		}
		
		public String getPassenger () {
			return passenger_number;
		}
		
		public void setAirline (String airlinecompany) {
			this.airline = airlinecompany;
		}
		
		public String getAirline() {
			return airline;
		}
		
		public void setFlight (int flightnumber) {
			this.flight = flightnumber;
		}
		
		public int getFlight () {
			return flight;
		}
		
		public void setDeparture (String departuretime) {
			this.departure = departuretime;
		}
		
		public String getDeparture() {
			return departure;
		}
		
		public void setArrival(String arrivaltime) {
			this.arrival = arrivaltime;
		}
		
		public String getArrival() {
			return arrival;
		}
	}
}
