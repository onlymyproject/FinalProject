package Maestro.Reservation.service;

import java.util.List;

public interface VehiculeService {
	public void addVehicule(Vehicule vehicule);
	public void updateVehicule(Vehicule vehicule);
	public void deleteVehicule(int id);
	public Vehicule getVehicule(int id);
	public List<Vehicule> getVehicules();
}
