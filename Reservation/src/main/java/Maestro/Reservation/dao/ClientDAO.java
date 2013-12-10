package Maestro.Reservation.dao;

import java.util.List;

import Maestro.Reservation.service.Client;

public interface ClientDAO {
	public void addClient(Client client);
	public void updateClient(Client client);
	public void deleteClient(int id);
	public Client getClient(int id);
	public List<Client> getClients();
}
