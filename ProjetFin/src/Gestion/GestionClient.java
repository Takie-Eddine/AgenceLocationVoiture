package Gestion;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Connexion;
import Model.Reservation;
import Model.Vehicule;
import converter.StringToSqlObject;

public class GestionClient {
  
	Connexion connexion;
	
	
	public GestionClient() {
		this.connexion = new Connexion();
	}

	public ArrayList<Vehicule> rechercheVoiture() {
		ArrayList<Vehicule> voiture=new ArrayList<>();
		connexion.createConnexion();
		
		try {
			PreparedStatement  preparedStatement = Connexion.con.prepareStatement("select * from voiture;");
			Connexion.r=preparedStatement.executeQuery();
			while(Connexion.r.next()){
				Vehicule car=new Vehicule();
				car.setMarque(Connexion.r.getString("marque"));
				car.setModele(Connexion.r.getString("modele"));
				car.setMatricule(Connexion.r.getString("matricule"));
				car.setCategorie(Connexion.r.getString("categorie"));
				car.setEtatv(Connexion.r.getString("etat"));
				car.setPrix_par_jour(Connexion.r.getDouble("prix_par_jour"));
				car.setPrix_par_heure(Connexion.r.getDouble("prix_par_heure"));
				car.setIddepot(Connexion.r.getInt("idDepot"));
				
				voiture.add(car);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		connexion.closeConnexion();
		return voiture;
		
	}
	
	public ArrayList<Vehicule> rechercheMoto() {
		ArrayList<Vehicule> MOTOR=new ArrayList<>();
		connexion.createConnexion();
		
		try {
			PreparedStatement  preparedStatement = Connexion.con.prepareStatement("select * from moto where(etat='libre');");
			Connexion.r=preparedStatement.executeQuery();
			while(Connexion.r.next()){
				Vehicule moto=new Vehicule();
				moto.setMarque(Connexion.r.getString("marque"));
				moto.setModele(Connexion.r.getString("modele"));
				moto.setMatricule(Connexion.r.getString("matricule"));
				moto.setCategorie(Connexion.r.getString("categorie"));
				moto.setEtatv(Connexion.r.getString("etat"));
				moto.setPrix_par_jour(Connexion.r.getDouble("prix_par_jour"));
				moto.setPrix_par_heure(Connexion.r.getDouble("prix_par_heure"));
				moto.setIddepot(Connexion.r.getInt("idDepot"));
				
				MOTOR.add(moto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		connexion.closeConnexion();
		return MOTOR;
		
	}
	
	public ArrayList<Vehicule> rechercheBus() {
		ArrayList<Vehicule> Bus=new ArrayList<>();
		connexion.createConnexion();
		
		try {
			PreparedStatement  preparedStatement = Connexion.con.prepareStatement("select * from bus where(etat='libre');");
			Connexion.r=preparedStatement.executeQuery();
			while(Connexion.r.next()){
				Vehicule bus=new Vehicule();
				bus.setMarque(Connexion.r.getString("marque"));
				bus.setModele(Connexion.r.getString("modele"));
				bus.setMatricule(Connexion.r.getString("matricule"));
				bus.setCategorie(Connexion.r.getString("categorie"));
				bus.setEtatv(Connexion.r.getString("etat"));
				bus.setPrix_par_jour(Connexion.r.getDouble("prix_par_jour"));
				bus.setPrix_par_heure(Connexion.r.getDouble("prix_par_heure"));
				bus.setIddepot(Connexion.r.getInt("idDepot"));
				
				bus.setPlace(Connexion.r.getInt("nombrePlace"));
				Bus.add(bus);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		connexion.closeConnexion();
		return Bus;
		
	}
	
       public  ArrayList<Vehicule> rechercheMotoCritere(String marque,String categorie,String etat,double prix_par_heure,double prix_par_jour ) {
    	   ArrayList<Vehicule> MOTO=new ArrayList<>();
    	   connexion.createConnexion();
    	   PreparedStatement  preparedStatement = null;
    	   
    	   String query="select * from moto where( true ",critere="";
    	  
    	   if(marque!=null) {
    		   critere+="and marque=?  ";
    	   }
    	   if(categorie!=null) {
    		   critere+="and categorie=?  "; 
    	   }
    	   if(etat!=null) {
    		   critere+="and etat=?  ";
    	   }
    	   if(prix_par_heure!=0) {
    		   critere+=" and prix_par_heure=?  ";
    	   }
    	   if(prix_par_jour!=0) {
    		   critere+="and prix_par_jour=? ";
    	   }
    	   critere+=");";
    	   
    	   try {
    		   preparedStatement = Connexion.con.prepareStatement(query+critere);
    	   } catch (SQLException e) {
    		   e.printStackTrace();
    	   }
    	   
    	   try {
        	   int i = 1;
        	   if(marque!=null) {
            	   preparedStatement.setString(i, marque);
            	   i++;
        	   }
        	   if(categorie!=null) {
            	   preparedStatement.setString(i, categorie);
            	   i++;
        	   }
        	   if(etat!=null) {
            	   preparedStatement.setString(i, etat);
            	   i++;
        	   }
        	   if(prix_par_heure!=0) {
            	   preparedStatement.setDouble(i, prix_par_heure);
            	   i++;
        	   }
        	   if(prix_par_jour!=0) {
            	   preparedStatement.setDouble(i, prix_par_jour);
        	   }
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	   
    	   try {
    		   Connexion.r=preparedStatement.executeQuery();
    	   } catch (SQLException e) {
    		   e.printStackTrace();
    	   }
    	   
			try {
				while(Connexion.r.next()){
					Vehicule moto=new Vehicule();
					moto.setMarque(Connexion.r.getString("marque"));
					moto.setModele(Connexion.r.getString("modele"));
					moto.setMatricule(Connexion.r.getString("matricule"));
					moto.setCategorie(Connexion.r.getString("categorie"));
					moto.setEtatv(Connexion.r.getString("etat"));
					moto.setPrix_par_jour(Connexion.r.getDouble("prix_par_jour"));
					moto.setPrix_par_heure(Connexion.r.getDouble("prix_par_heure"));
					moto.setIddepot(Connexion.r.getInt("idDepot"));
					MOTO.add(moto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			connexion.closeConnexion();
		return MOTO;
    	   
       }
       
       
       public  ArrayList<Vehicule> rechercheVoitureCritere(String marque,String categorie,String etat,double prix_par_heure,double prix_par_jour ) {
    	   ArrayList<Vehicule> voiture=new ArrayList<>();
    	   connexion.createConnexion();
    	   PreparedStatement  preparedStatement = null;
    	   
    	   String query="select * from voiture where( true ",critere="";
    	  
    	   if(marque!=null) {
    		   critere+="and marque=?  ";
    	   }
    	   if(categorie!=null) {
    		   critere+="and categorie=?  "; 
    	   }
    	   if(etat!=null) {
    		   critere+="and etat=?  ";
    	   }
    	   if(prix_par_heure!=0) {
    		   critere+=" and prix_par_heure=?  ";
    	   }
    	   if(prix_par_jour!=0) {
    		   critere+="and prix_par_jour=? ";
    	   }
    	   critere+=");";
    	   
    	   try {
    		   preparedStatement = Connexion.con.prepareStatement(query+critere);
    	   } catch (SQLException e) {
    		   e.printStackTrace();
    	   }
    	   
    	   try {
        	   int i = 1;
        	   if(marque!=null) {
            	   preparedStatement.setString(i, marque);
            	   i++;
        	   }
        	   if(categorie!=null) {
            	   preparedStatement.setString(i, categorie);
            	   i++;
        	   }
        	   if(etat!=null) {
            	   preparedStatement.setString(i, etat);
            	   i++;
        	   }
        	   if(prix_par_heure!=0) {
            	   preparedStatement.setDouble(i, prix_par_heure);
            	   i++;
        	   }
        	   if(prix_par_jour!=0) {
            	   preparedStatement.setDouble(i, prix_par_jour);
        	   }
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	   
    	   try {
    		   Connexion.r=preparedStatement.executeQuery();
    	   } catch (SQLException e) {
    		   e.printStackTrace();
    	   }
    	   
			try {
				while(Connexion.r.next()){
					Vehicule car=new Vehicule();
					car.setMarque(Connexion.r.getString("marque"));
					car.setModele(Connexion.r.getString("modele"));
					car.setMatricule(Connexion.r.getString("matricule"));
					car.setCategorie(Connexion.r.getString("categorie"));
					car.setEtatv(Connexion.r.getString("etat"));
					car.setPrix_par_jour(Connexion.r.getDouble("prix_par_jour"));
					car.setPrix_par_heure(Connexion.r.getDouble("prix_par_heure"));
					car.setIddepot(Connexion.r.getInt("idDepot"));
					voiture.add(car);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			connexion.closeConnexion();
		return voiture;
    	   
       }
       
       
       
       
       
       
       
       
       public void reserverVoiture(Reservation reservation) {
    	   connexion.createConnexion();
    	   
    	   try {
			PreparedStatement  preparedStatement = Connexion.con.prepareStatement(
						"INSERT INTO reservation"
						+ "(numeroIdentifient,"
						+ "dateDebut,"
						+ "dateFin,"
						+ "heureDebut,"
						+ "heureFin,"
						+ "prix,"
						+ "etat,"
						+ "matriculeV"
						+")"
						+ "VALUES(?,?,?,?,?,?,?,?)");
			StringToSqlObject converter = new StringToSqlObject(reservation);
			preparedStatement.setInt(1,reservation.getNumeroIdentifient());
			preparedStatement.setDate(2,converter.getDateDebut());
			preparedStatement.setDate(3,converter.getDatefin());
			preparedStatement.setTime(4,converter.getHeureDebut());
			preparedStatement.setTime(5,converter.getHeureFin());
			preparedStatement.setDouble(6,reservation.getPrix());
			preparedStatement.setString(7,reservation.getEtat().toString());
			preparedStatement.setString(8,reservation.getMatricule());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	   
    	   
       }
	
}
