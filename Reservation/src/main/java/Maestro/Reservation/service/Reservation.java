package Maestro.Reservation.service;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reservations")
public class Reservation {
	
	@Id
    @Column(name="ID")
    @GeneratedValue
	private Integer id;
	
	private Date debut;
	private Date retour;
	private String marqueVehicule;
	private int nbsiegebebe;
	private int nbrehausseur;
	private int nbsiegeenfant;
	
	public Reservation(){
		
	}
	
	public Date getDebut() {
		return debut;
	}
	public void setDebut(Date debut) {
		this.debut = debut;
	}
	public Date getRetour() {
		return retour;
	}
	public void setRetour(Date retour) {
		this.retour = retour;
	}
	
	public String getMarqueVehicule() {
		return marqueVehicule;
	}
	public void setMarqueVehicule(String marqueVehicule) {
		this.marqueVehicule = marqueVehicule;
	}
	
	public int getNbsiegebebe() {
		return nbsiegebebe;
	}
	public void setNbsiegebebe(int nbsiegebebe) {
		this.nbsiegebebe = nbsiegebebe;
	}
	public int getNbrehausseur() {
		return nbrehausseur;
	}
	public void setNbrehausseur(int nbrehausseur) {
		this.nbrehausseur = nbrehausseur;
	}
	public int getNbsiegeenfant() {
		return nbsiegeenfant;
	}
	public void setNbsiegeenfant(int nbsiegeenfant) {
		this.nbsiegeenfant = nbsiegeenfant;
	}
	public Integer getId() {
		return id;
	}
	
	
	

}
