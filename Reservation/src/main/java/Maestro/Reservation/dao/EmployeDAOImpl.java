package Maestro.Reservation.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Maestro.Reservation.service.Employe;

@Repository
public class EmployeDAOImpl implements EmployeDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addEmploye(Employe employe) {
		// TODO Auto-generated method stub
		getCurrentSession().save(employe);
	}

	@Override
	public void updateEmploye(Employe employe) {
		// TODO Auto-generated method stub
		getCurrentSession().update(employe);
	}

	@Override
	public void deleteEmploye(int id) {
		// TODO Auto-generated method stub
		Employe employe = getEmploye(id);
		if(employe != null){
			getCurrentSession().delete(employe);
		}
	}

	@Override
	public Employe getEmploye(int id) {
		// TODO Auto-generated method stub
		Employe employe = (Employe) getCurrentSession().get(Employe.class, id);
		return employe;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Employe> getEmployes() {
		// TODO Auto-generated method stub
		return getCurrentSession().createQuery("from Employe").list();
	}

}
