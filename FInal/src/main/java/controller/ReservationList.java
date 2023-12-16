package controller;

public class ReservationList {
	
	
	public class ReservationCustomerlist {
		private int flight;
		private String passenger_number;
		
		public ReservationCustomerlist(String passengerNum,int flightnumber) {
			this.flight = flightnumber;
			this.passenger_number = passengerNum;
		}
		public void setPassenger (String passenger) {
			passenger_number = passenger;
		}
		
		public String getPassenger () {
			return passenger_number;
		}
		
		public void setFlight (int flightnumber) {
			this.flight = flightnumber;
		}
	}
}
