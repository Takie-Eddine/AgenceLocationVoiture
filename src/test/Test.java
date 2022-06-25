package test;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.prism.shader.Texture_LinearGradient_PAD_AlphaTest_Loader;

import Enumeration.EtatC;
import Gestion.GestionClient;
import Gestion.GestionInsAuth;
import Model.Client;
import Model.Connexion;
import Model.Reservation;
import Model.Vehicule;

@SuppressWarnings("unused")
public class Test {

	public static void main(String[] args) {
		/*
		Client client = testClient();
		GestionInsAuth gestionInsAuth = new GestionInsAuth();
		gestionInsAuth.inscrire(client);
		
		String marque=null, categorie = null, etat = "horsService";
		double prix_par_heure =0, prix_par_jour=0;
		GestionClient gestionClient = new GestionClient();
		testRes(gestionClient.rechercheMotoCritere(marque, categorie, etat, prix_par_heure, prix_par_jour));
		*/
		GestionClient gestionClient = new GestionClient();
		Reservation reservation=new Reservation();
		reservation.setDateDebut("12/02/2018");
		reservation.setDatefin("12/02/2018");
		reservation.setHeureDebut("08:00:00");
		reservation.setHeureFin("22:00:00");
		reservation.setMatricule("0021-117-25");
		reservation.setNumeroIdentifient(12389);
		reservation.setPrix(5635556);
		reservation.setEtat(EtatC.NonValide);
		gestionClient.reserverVoiture(reservation);
	}

	private static Client testClient() {
		Client client = new Client();
 		client.setNumeroidentifient(222222);
		client.setNom("wassim");
		client.setPrenom("wassim");
		client.setNomUtilisateur("wassim");
		client.setPassword("wassim");
		client.setEmail("wassim@gmail.com");
		client.setAdresse("wassim");
		client.setDateNaissence("01/02/1995");
		client.setNumeroTelephone(0133055);
		client.setEtat("preinscrit");
		client.setNotification("null");
		return client;
	}
	private static void testRes(ArrayList<Vehicule> voiture) {
		for (int i = 0; i < voiture.size(); i++) {
			System.out.println(voiture.get(i).getModele()+"  "+voiture.get(i).getMarque());
		}
	}

}
