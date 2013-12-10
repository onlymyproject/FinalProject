package Maestro.Reservation.dao;

import java.util.List;

import Maestro.Reservation.service.Vehicule;

public interface VehiculeDAO {
	public void addVehicule(Vehicule vehicule);
	public void updateVehicule(Vehicule vehicule);
	public Vehicule getVehicule(int id);
	public void deleteVehicule(int id);
	public List<Vehicule> getVehicules();
}
