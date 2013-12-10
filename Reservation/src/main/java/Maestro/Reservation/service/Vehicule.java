package Maestro.Reservation.service;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="vehicules")

public class Vehicule {
	
	@Id
	@GeneratedValue
	private Integer id;

	@NotNull 
	private String marque;
	@NotNull
	private String type;
	@NotNull
	private String carbulant;
	
	
	private int annee;
	
	
	public Vehicule(){
		
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCarbulant() {
		return carbulant;
	}

	public void setCarbulant(String carbulant) {
		this.carbulant = carbulant;
	}

	public int getAnnee() {
		return annee;
	}

	public void setAnnee(int annee) {
		this.annee = annee;
	}
	
	public String toString() {
		String res ="";
		res+=" "+this.getMarque()+" type: "+this.getType()+" Carbu : "+this.getCarbulant();
		
		return res;
	}

}

