package Maestro.Reservation.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Maestro.Reservation.service.Client;

@Repository
public class ClientDAOImpl implements ClientDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addClient(Client client) {
		// TODO Auto-generated method stub
		getCurrentSession().save(client);
	}

	@Override
	public void updateClient(Client client) {
		// TODO Auto-generated method stub
		getCurrentSession().update(client);
	}

	@Override
	public void deleteClient(int id) {
		// TODO Auto-generated method stub
		Client client = getClient(id);
		if(client != null){
			getCurrentSession().delete(client);
		}
	}

	@Override
	public Client getClient(int id) {
		// TODO Auto-generated method stub
		Client client = (Client) getCurrentSession().get(Client.class, id);
		return client;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Client> getClients() {
		// TODO Auto-generated method stub
		return getCurrentSession().createQuery("from Client").list();
	}

}
