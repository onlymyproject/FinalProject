package Maestro.Reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Maestro.Reservation.dao.ClientDAOImpl;

@Service
@Transactional
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientDAOImpl clientDAO;
	
	@Override
	@Transactional
	public void addClient(Client client) {
		// TODO Auto-generated method stub
		clientDAO.addClient(client);
	}

	@Override
	public void updateClient(Client client) {
		// TODO Auto-generated method stub
		clientDAO.updateClient(client);
	}

	@Override
	public void deleteClient(int id) {
		// TODO Auto-generated method stub
		clientDAO.deleteClient(id);
	}

	@Override
	public Client getClient(int id) {
		// TODO Auto-generated method stub
		return clientDAO.getClient(id);
	}

	@Override
	public List<Client> getClients() {
		// TODO Auto-generated method stub
		return clientDAO.getClients();
	}

}