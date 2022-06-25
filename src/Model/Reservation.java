package Model;


import Enumeration.EtatC;

public class Reservation {
	private int idReservation,numeroIdentifient;
	private String matricule,dateDebut,Datefin,heureDebut,heureFin;
	private double prix;
	private EtatC etat;
	public int getIdReservation() {
		return idReservation;
	}
	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}
	public int getNumeroIdentifient() {
		return numeroIdentifient;
	}
	public void setNumeroIdentifient(int numeroIdentifient) {
		this.numeroIdentifient = numeroIdentifient;
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(String dateDebut) {
		this.dateDebut = dateDebut;
	}
	public String getDatefin() {
		return Datefin;
	}
	public void setDatefin(String datefin) {
		Datefin = datefin;
	}
	public String getHeureDebut() {
		return heureDebut;
	}
	public void setHeureDebut(String heureDebut) {
		this.heureDebut = heureDebut;
	}
	public String getHeureFin() {
		return heureFin;
	}
	public void setHeureFin(String heureFin) {
		this.heureFin = heureFin;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public EtatC getEtat() {
		return etat;
	}
	public void setEtat(EtatC etat) {
		this.etat = etat;
	}
	

}
