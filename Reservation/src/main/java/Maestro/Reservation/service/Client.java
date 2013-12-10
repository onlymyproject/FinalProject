package Maestro.Reservation.service;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="clients")
public class Client {
	
	@Id
	@GeneratedValue
	private Integer id;
	@NotEmpty(message="Nom obligatoire")
	private String nom;
	@NotEmpty(message="Prénom obligatoire")
	private String prenom;
	@NotEmpty(message="E-Mail obligatoire")
	private String email;
	
	private Integer IDReservation;
	private Integer IDVehicule;
	

	
	public Client(){
		nom="";
		prenom ="";
		email="";
		
		
	}
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public Integer getIDReservation() {
		return IDReservation;
	}

	public void setIDReservation(Integer iDReservation) {
		IDReservation = iDReservation;
	}
	
	public Integer getIDVehicule() {
		return IDVehicule;
	}

	public void setIDVehicule(Integer iDVehicule) {
		IDVehicule = iDVehicule;
	}

	
}

