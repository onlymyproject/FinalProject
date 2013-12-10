package Maestro.Reservation.dao;

import java.util.List;

import Maestro.Reservation.service.Employe;

public interface EmployeDAO {
	public void addEmploye(Employe employe);
	public void updateEmploye(Employe employe);
	public void deleteEmploye(int id);
	public Employe getEmploye(int id);
	public List<Employe> getEmployes();
}
