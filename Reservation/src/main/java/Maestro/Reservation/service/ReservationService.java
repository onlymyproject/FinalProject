package Maestro.Reservation.service;

import java.util.List;

public interface ReservationService {
	public void addReservation(Reservation reservation);
	public void updateReservation(Reservation reservation);
	public void deleteReservation(int id);
	public Reservation getReservation(int id);
	public List<Reservation> getReservations();
}

