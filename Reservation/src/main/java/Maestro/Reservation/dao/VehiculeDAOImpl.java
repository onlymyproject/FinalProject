package Maestro.Reservation.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Maestro.Reservation.service.Vehicule;


@Repository
public class VehiculeDAOImpl implements VehiculeDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addVehicule(Vehicule vehicule) {
		// TODO Auto-generated method stub
		getCurrentSession().save(vehicule);
	}

	@Override
	public void updateVehicule(Vehicule vehicule) {
		// TODO Auto-generated method stub
		getCurrentSession().update(vehicule);
	}

	@Override
	public Vehicule getVehicule(int id) {
		// TODO Auto-generated method stub
		Vehicule vehicule = (Vehicule) getCurrentSession().get(Vehicule.class, id);
		return vehicule;
	}
	
	@Override
	public void deleteVehicule(int id) {
		// TODO Auto-generated method stub
		Vehicule vehicule = getVehicule(id);
		if(vehicule != null){
			getCurrentSession().delete(vehicule);
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Vehicule> getVehicules() {
		// TODO Auto-generated method stub
		return getCurrentSession().createQuery("from Vehicule").list();
	}

}
