package Maestro.Reservation.service;

import java.awt.Color;
import java.util.Date;

public class Event {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Color getCouleur() {
		return couleur;
	}
	public void setCouleur(Color couleur) {
		this.couleur = couleur;
	}
	public String toString(){
		return "id :"+this.getId()+" title : "+this.getTitle()+" start : "+this.getStart()+" End : "+this.getEnd()+" url :"+this.getUrl();
	}
	private String title;
	private boolean allDay ;
	public boolean isAllDay() {
		return allDay;
	}
	public void setAllDay(boolean allDay) {
		this.allDay = allDay;
	}
	private Date start;
	private Date end;
	private String url;
	private Color couleur;
}
