package Maestro.Reservation.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;








import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Maestro.Reservation.service.Client;
import Maestro.Reservation.service.ClientService;
import Maestro.Reservation.service.Employe;
import Maestro.Reservation.service.EmployeService;
import Maestro.Reservation.service.Reservation;
import Maestro.Reservation.service.ReservationService;
import Maestro.Reservation.service.Vehicule;
import Maestro.Reservation.service.VehiculeService;

@Controller
public class HomeController {
	
	@Autowired
	VehiculeService vehiculeService;
	List<Vehicule> vehicules;
	
	
	@RequestMapping(value="/admin")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		ModelAndView home = new ModelAndView("Admin/home");
		return home;
	}
	
	@RequestMapping(value="/vehicule/add")
	public ModelAndView pageAddVehicule(HttpServletResponse response) throws IOException{
		ModelAndView AddVehicule = new ModelAndView("Vehicule/AddVehicule");
		AddVehicule.addObject("vehicules",vehicules); //ajout de la liste pour afficher les véhicules disponibles
		return AddVehicule;
	}

	@RequestMapping(value="/vehicule/add/process", method = RequestMethod.POST)
	public ModelAndView addingVehicule(@ModelAttribute("vehicule") Vehicule vehicule, BindingResult result,HttpServletRequest request, HttpServletResponse response) throws Exception{
		if(result.hasErrors()){
			String messageEchec = "Attention, il ya eu une erreur de saisie !!";
			ModelAndView retour = new ModelAndView("Vehicule/AddVehicule");
			retour.addObject("messageEchec",messageEchec);
			return retour;
		}
		
		ModelAndView modelAndView = new ModelAndView("Vehicule/ListeVehicule");
		//IDVehicule = vehicule.getId();
		vehiculeService.addVehicule(vehicule);
		vehicules = vehiculeService.getVehicules();
		modelAndView.addObject(vehicules);
		System.out.println("Nombre de vehicules : "+vehicules.size());
		
		ModelAndView retour = new ModelAndView("redirect:/vehicule/ListeVehicule");
		return retour;
		
	}
	
	@RequestMapping(value="/vehicule/ListeVehicule")
	public ModelAndView listeVehicules() {
		ModelAndView modelAndView = new ModelAndView("Vehicule/ListeVehicule");
		vehicules = vehiculeService.getVehicules();
		modelAndView.addObject("vehicules", vehicules);
		return modelAndView;
	}
	
	@RequestMapping(value="/vehicule/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editVehiculePage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("Vehicule/editVehicule");
		Vehicule vehicule = vehiculeService.getVehicule(id);
		modelAndView.addObject("vehicule",vehicule);
		return modelAndView;
	}
	
	@RequestMapping(value="/vehicule/edit/{id}", method=RequestMethod.POST)
	public ModelAndView edditingVehicule(@Valid @ModelAttribute Vehicule vehicule, BindingResult result, @PathVariable Integer id) {
		if(result.hasErrors()){
			return new ModelAndView("employe/AddEmploye");
		}
		System.out.println(vehicule.getId());
		vehiculeService.updateVehicule(vehicule);
		ModelAndView retour = new ModelAndView("redirect:/vehicule/ListeVehicule");
		return retour;
	}
		 
	@RequestMapping(value="/vehicule/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteVehicule(@PathVariable Integer id) {
	    vehiculeService.deleteVehicule(id);
	    ModelAndView retour = new ModelAndView("redirect:/vehicule/ListeVehicule");
		return retour;
	}
		    
	//##########################################################################################################################
		    
		    
		    @Autowired
			EmployeService employeService;
		    
			List<Employe> employees;
		    
		    @RequestMapping(value="/employe/add")
			public ModelAndView pageAddEmploye(HttpServletResponse response) throws IOException{
				ModelAndView AddEmploye = new ModelAndView("/Employe/AddEmploye");
				AddEmploye.addObject("employe",new Employe());
				AddEmploye.addObject("employees",employees);
		    	return AddEmploye;
			}

		    
		    @RequestMapping(value="/employe/ListeEmployes")
			public ModelAndView listeEmployes() {
		    	 
		    	ModelAndView modelAndView = new ModelAndView("Employe/ListeEmployes");		    	
				employees = employeService.getEmployes();
				System.out.println("Taille liste employees (actuellement) : "+employees.size());
				modelAndView.addObject("employees", employees);
				return modelAndView;
			}
		    
		    @RequestMapping(value="/employe/add/process", method=RequestMethod.POST)
		    public ModelAndView addingEmployee(@ModelAttribute("employe") Employe employe, BindingResult result,HttpServletRequest request, HttpServletResponse response) throws Exception
		    {
		    	ModelAndView modelAndView = new ModelAndView("/Employe/ListeEmployes");
				employeService.addEmploye(employe);
				modelAndView.addObject(employees);
				ModelAndView retour = new ModelAndView("redirect:/employe/ListeEmployes");
				return retour;
		    }
		    
		    @RequestMapping(value="/employe/delete/{id}", method=RequestMethod.GET)
			public ModelAndView deleteEmploye(@PathVariable Integer id) {
			    employeService.deleteEmploye(id);
			    ModelAndView retour = new ModelAndView("redirect:/employe/ListeEmployes");
				return retour;
			}
		    
		    @RequestMapping(value="/employe/edit/{id}", method=RequestMethod.GET)
			public ModelAndView editEmployePage(@PathVariable Integer id) {
				ModelAndView modelAndView = new ModelAndView("Employe/EditEmploye");
				Employe employe = employeService.getEmploye(id);
				modelAndView.addObject("employe",employe);
				return modelAndView;
			}
			
			@RequestMapping(value="/employe/edit/{id}", method=RequestMethod.POST)
			public ModelAndView edditingEmploye(@ModelAttribute Employe employe, BindingResult result, @PathVariable Integer id) {
				if(result.hasErrors()){
					return new ModelAndView("employe/AddEmploye");
				}
				System.out.println(employe.getId());
				employeService.updateEmploye(employe);
				ModelAndView retour = new ModelAndView("redirect:/employe/ListeEmployes");
				return retour;
			}
		    
		    
		  //##########################################################################################################################
			@Autowired
			ReservationService reservationService;
			List<Reservation> reservations;
			
			@Autowired
			ClientService clientService;
			Integer IDReservation;
			
			@RequestMapping(value="/")
			public ModelAndView gestionReservations() {
				ModelAndView modelAndView = new ModelAndView("/Reservations/gestion");
				modelAndView.addObject("reservation",new Reservation());
				modelAndView.addObject("vehicules", vehicules);
				return modelAndView;
			}
		    
		    @RequestMapping(value="/reservation/valider")
			public ModelAndView validerReservations() {	    	
		    	ModelAndView reservationEnAttente = new ModelAndView("/Reservations/liste");
		    	reservationEnAttente.addObject("reservations", reservations);
				return reservationEnAttente;
			}
		    
		    @RequestMapping(value="/reservation/valider/process", method = RequestMethod.POST)
			public ModelAndView publierVehicules() {
				ModelAndView client = new ModelAndView("Reservations/gestion");
				client.addObject("vehicules", vehicules);
				return client;
			}
		    
		    @RequestMapping(value="/reservation/demand", method = RequestMethod.POST)
			public ModelAndView reservationVehicules(@ModelAttribute("reservation") Reservation reservation, BindingResult result,HttpServletRequest request, HttpServletResponse response) throws Exception{
				reservationService.addReservation(reservation);
				reservations = reservationService.getReservations();
				System.out.println("Marque : "+reservation.getMarqueVehicule());
				System.out.println("Debut : "+reservation.getDebut());
				System.out.println("Retour : "+reservation.getRetour());
				System.out.println("Nb siege bb : "+reservation.getNbsiegebebe());
				System.out.println("NB rehausseur : "+reservation.getNbrehausseur());
				System.out.println("NB siege enfant : "+reservation.getNbsiegeenfant());
				System.out.println("Reservation ID : "+reservation.getId());
				ModelAndView donneesReservation = new ModelAndView("/Reservations/liste");
				donneesReservation.addObject(reservations);
				IDReservation = reservation.getId();
				
		    	ModelAndView modelAndView = new ModelAndView("/Reservations/informationsPerso");
		    	modelAndView.addObject("client", new Client());
				return modelAndView;
			}
		    
		    @RequestMapping(value="/reservation/calendar")
			public ModelAndView afficheCalendar() {
		    	ModelAndView modelAndView = new ModelAndView("/Reservations/calendar");
				return modelAndView;
			}
		    
		    @RequestMapping(value="reservation/conformationclient", method=RequestMethod.POST)
			public ModelAndView donneesClient(@ModelAttribute("client") Client client, BindingResult result,HttpServletRequest request, HttpServletResponse response) throws Exception{
		    	if(result.hasErrors()){
					String messageEchec = "Attention, il ya eu une erreur de saisie !!";
					ModelAndView retour = new ModelAndView("Reservations/informationsPerso");
					retour.addObject("messageEchec",messageEchec);
					return retour;
				}
		    	System.out.println("Client Nom : "+client.getNom());
				System.out.println("Client Prenom : "+client.getPrenom());
				System.out.println("Client Email : "+client.getEmail());
				client.setIDReservation(IDReservation);
				clientService.addClient(client);
		    	ModelAndView modelAndView = new ModelAndView("/Reservations/confirmation");
				return modelAndView;
			}
		    
		    
		    //##################################################################################################
		    
		    
		    
			List<Client> clients;
			
			@RequestMapping(value="/clients")
			public ModelAndView gestionClients(){
				ModelAndView modelAndView = new ModelAndView("/Client/listeClients");
				clients = clientService.getClients();
				modelAndView.addObject("clients", clients);
				return modelAndView;
			}
			
			@RequestMapping(value="/client/reservation/check/{id}")
			public ModelAndView consultationReservation(@PathVariable Integer id){
				ModelAndView modelAndView = new ModelAndView("/Client/reservationCourante");
				Reservation reservationCourante = reservationService.getReservation(id);
				modelAndView.addObject("reservationCourante", reservationCourante);
				return modelAndView;
			}
			
		    
			@RequestMapping(value="/client/delete/{id}")
			public ModelAndView deleteClient(@PathVariable Integer id){
				ModelAndView modelAndView = new ModelAndView("/Client/listeClients");
				Client c = clientService.getClient(id);
			    Integer idReserv = c.getIDReservation(); //Reservation à supprimer
				System.out.println("IDCLient : "+c.getId()+"----IDReserv : "+idReserv);
				reservationService.deleteReservation(idReserv);
				reservations = reservationService.getReservations(); //Mettre à jour la liste des reservatons
				clientService.deleteClient(id);
				
				ModelAndView retour = new ModelAndView("redirect:/clients");
				return retour;
			}
}
