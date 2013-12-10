package Maestro.Reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Maestro.Reservation.dao.EmployeDAOImpl;

@Service
@Transactional
public class EmployeServiceImpl implements EmployeService{

	@Autowired
	private EmployeDAOImpl employeDAO;
	
	@Override
	@Transactional
	public void addEmploye(Employe employe) {
		// TODO Auto-generated method stub
		employeDAO.addEmploye(employe);
	}

	@Override
	public void updateEmploye(Employe employe) {
		// TODO Auto-generated method stub
		employeDAO.updateEmploye(employe);
	}

	@Override
	public void deleteEmploye(int id) {
		// TODO Auto-generated method stub
		employeDAO.deleteEmploye(id);
	}

	@Override
	public Employe getEmploye(int id) {
		// TODO Auto-generated method stub
		return employeDAO.getEmploye(id);
	}

	@Override
	public List<Employe> getEmployes() {
		// TODO Auto-generated method stub
		return employeDAO.getEmployes();
	}

}
