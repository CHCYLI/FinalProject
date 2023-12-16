package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class CustomerWaitingList extends HttpServlet{
	protected void search (HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
		String airline = request.getParameter("airline_company_id");
		int flight = Integer.parseInt(request.getParameter("id"));
		SimpleDateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		Date arrival;
		Date departure;
		String tempdeparture = request.getParameter("departure_time");
		String temparrival = request.getParameter("arrival_time");
		ArrayList<SearchList> searchList = new ArrayList<SearchList>();
		String passengerNum = request.getParameter("passenger_number");
		String statement = "";
		
		if (passengerNum != null) {
			statement += ("Passenger Number: " + passengerNum + " ");
		}
		if (airline != null) {
			statement += ("Airline Company: " + airline + " ");
		}
		if (flight != 0) {
			statement += ("Flight Number is : " + Integer.toString(flight) + " ");
		}
		if (tempdeparture != null) {
			statement += ("Departure Time: " + tempdeparture + " ");
		}
		if (temparrival != null) {
			statement += ("Arrival Time: " + temparrival + " ");
		}
		
		try {
		    arrival = df.parse(temparrival);
		} catch (ParseException e) {
		    e.printStackTrace();
		}
		
		try {
			departure = df.parse(tempdeparture);
		} catch (ParseException e) {
		    e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/System", "root", "bb20030315");
			Statement st = conn.prepareStatement(statement);
			
			ResultSet rs = st.executeQuery("Passenger: " + passengerNum +"Airline： " + airline + " Flight: " + flight + 
					" Arrival Time: " + temparrival + " Departure Time: " + tempdeparture);
			
			while (rs.next()) {
				searchList.add(new SearchList(rs.getString("passenger_number"),
						rs.getString("airline_company_id"),
						rs.getInt("id"),
						rs.getString("departure_time"),
						rs.getString("arrival_yime")));
				//System.out.println(rs.getString(1));
			}
			
			if (searchList.isEmpty()) {
				System.out.print("No Waiting Lists Found");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error: " + e.getMessage()); // Logging the exception message
            request.setAttribute("error", "There was an error processing your request.");
            request.getRequestDispatcher("/representative.jsp").forward(request, response);
		}
		
		request.setAttribute("waitlinglists", searchList);
        request.getRequestDispatcher("/waitinglists.jsp").forward(request, response);
		
	}
	
	public class SearchList {
		private String airline;
		private int flight;
		private String departure;
		private String arrival;
		private String passenger_number;
		
		public SearchList(String passengerNum, String airlinecompany, int flightnumber, String departuretime, String arrivaltime) {
			this.airline = airlinecompany;
			this.flight = flightnumber;
			this.departure = departuretime;
			this.arrival = arrivaltime;
			this.passenger_number = passengerNum;
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
