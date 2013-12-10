package Maestro.Reservation.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Maestro.Reservation.dao.VehiculeDAOImpl;


@Service
@Transactional
public class VehiculeServiceImpl implements VehiculeService{

	@Autowired
	private VehiculeDAOImpl vehiculeDAO;
	
	@Override
	@Transactional
	public void addVehicule(Vehicule vehicule) {
		// TODO Auto-generated method stub
		vehiculeDAO.addVehicule(vehicule);
	}

	@Override
	public void updateVehicule(Vehicule vehicule) {
		// TODO Auto-generated method stub
		vehiculeDAO.updateVehicule(vehicule);
	}

	@Override
	public Vehicule getVehicule(int id) {
		// TODO Auto-generated method stub
		return vehiculeDAO.getVehicule(id);
	}
	
	@Override
	@Transactional
	public void deleteVehicule(int id) {
		// TODO Auto-generated method stub
		vehiculeDAO.deleteVehicule(id);
	}

	@Override
	@Transactional
	public List<Vehicule> getVehicules() {
		// TODO Auto-generated method stub
		return vehiculeDAO.getVehicules();
	}

}
