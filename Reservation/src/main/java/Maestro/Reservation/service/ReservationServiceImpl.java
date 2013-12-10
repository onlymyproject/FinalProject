package Maestro.Reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Maestro.Reservation.dao.EmployeDAOImpl;
import Maestro.Reservation.dao.ReservationDAOImpl;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDAOImpl reservationDAO;
	
	@Override
	@Transactional
	public void addReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		reservationDAO.addReservation(reservation);
	}

	@Override
	public void updateReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		reservationDAO.updateReservation(reservation);
	}

	@Override
	public void deleteReservation(int id) {
		// TODO Auto-generated method stub
		reservationDAO.deleteReservation(id);
	}

	@Override
	public Reservation getReservation(int id) {
		// TODO Auto-generated method stub
		return reservationDAO.getReservation(id);
	}

	@Override
	public List<Reservation> getReservations() {
		// TODO Auto-generated method stub
		return reservationDAO.getReservations();
	}

}
