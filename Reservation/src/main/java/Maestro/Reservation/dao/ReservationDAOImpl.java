package Maestro.Reservation.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Maestro.Reservation.service.Employe;
import Maestro.Reservation.service.Reservation;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		getCurrentSession().save(reservation);
	}

	@Override
	public void updateReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		getCurrentSession().update(reservation);
	}

	@Override
	public void deleteReservation(int id) {
		// TODO Auto-generated method stub
		Reservation reservation = getReservation(id);
		if(reservation != null){
			getCurrentSession().delete(reservation);
		}
	}

	@Override
	public Reservation getReservation(int id) {
		// TODO Auto-generated method stub
		Reservation reservation = (Reservation) getCurrentSession().get(Reservation.class, id);
		return reservation;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Reservation> getReservations() {
		// TODO Auto-generated method stub
		return getCurrentSession().createQuery("from Reservation").list();
	}
}
