package Maestro.Reservation.dao;

import java.util.List;

import Maestro.Reservation.service.Employe;
import Maestro.Reservation.service.Reservation;

public interface ReservationDAO {
	public void addReservation(Reservation reservation);
	public void updateReservation(Reservation reservation);
	public void deleteReservation(int id);
	public Reservation getReservation(int id);
	public List<Reservation> getReservations();
}
