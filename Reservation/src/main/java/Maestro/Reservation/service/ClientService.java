package Maestro.Reservation.service;

import java.util.List;

public interface ClientService {
	public void addClient(Client client);
	public void updateClient(Client client);
	public void deleteClient(int id);
	public Client getClient(int id);
	public List<Client> getClients();
}
