package Maestro.Reservation.service;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="employes")
public class Employe {
	
	@Id
	@GeneratedValue
	private Integer id;
	@NotEmpty(message="Nom obligatoire")
	private String nom;
	@NotEmpty(message="Prénom obligatoire")
	private String prenom;
	
	
	public Employe(){
		nom="";
		prenom ="";
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


	
	
}

