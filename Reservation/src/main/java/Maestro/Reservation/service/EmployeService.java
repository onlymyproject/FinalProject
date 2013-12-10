package Maestro.Reservation.service;

import java.util.List;

public interface EmployeService {
	public void addEmploye(Employe employe);
	public void updateEmploye(Employe employe);
	public void deleteEmploye(int id);
	public Employe getEmploye(int id);
	public List<Employe> getEmployes();
}
