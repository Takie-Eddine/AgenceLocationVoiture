package Controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

import Gestion.GestionClient;
import Gestion.GestionInsAuth;
import Model.Client;
import Model.Gestionnaire;
import java.util.ArrayList;
import Model.Vehicule;

@SuppressWarnings("unused")
@WebServlet("/ServletAutheInsc")
public class ServletAutheInsc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ServletAutheInsc() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter  out= response.getWriter();
		
		
		String type = (String) request.getParameter("type");
		if (type == null) {
			
			this.getServletContext().getRequestDispatcher("/Accueil.html").forward(request, response);
			
		} else {
			switch (type) {
			case "AuthClient":
				authC(request, response);
				break;
			case "Inscription":
				ins (request, response);
				break;
			case "AuthGestionnaire"	:
				authG (request, response);
				break;
			default:
				this.getServletContext().getRequestDispatcher("/Accueil.html").forward(request, response);
				break;
			}
		
	
		
		
		doGet(request, response);
		}
	}
   
      
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	private Client formatClient(HttpServletRequest request) {
		Client client = new Client();
 		client.setNumeroidentifient(Integer.parseInt(request.getParameter("numPermis")));
		client.setNom(request.getParameter("nom"));
		client.setPrenom(request.getParameter("prenom"));
		client.setNomUtilisateur(request.getParameter("nomUtilisateur"));
		client.setPassword(request.getParameter("password"));
		client.setEmail(request.getParameter("email"));
		client.setAdresse(request.getParameter("adresse"));
		client.setDateNaissence(request.getParameter("dateNaissence"));
		client.setNumeroTelephone(Integer.parseInt(request.getParameter("numTel")));
		client.setEtat("preinscrit");
		client.setNotification("null");
		return client;
	}
	
	
	
	
	
              private void authC (HttpServletRequest request, HttpServletResponse response) {
            	  Client client=null;
            	  GestionInsAuth gestionInsAuth = null;
            	  GestionClient gestionclient =null;
            	  HttpSession session=null;
            	
            	  String user= request.getParameter("nomUtilisateur");
          		  String password=request.getParameter("password");
          		 
          		  gestionInsAuth = new GestionInsAuth();
          		  client = gestionInsAuth.sauthentifierClient(user,password);
          		  ArrayList<Vehicule> voiture=new ArrayList<>();
          		  gestionInsAuth=new GestionInsAuth();
          		 voiture=gestionInsAuth.rechercheVoiture();
          		  ArrayList<Vehicule> bus=new ArrayList<>();
          		  bus=gestionInsAuth.rechercheBus();
          		 ArrayList<Vehicule> moto=new ArrayList<>();
          		  moto=gestionInsAuth.rechercheMoto();
          		  if(client!=null) {
          			  if(client.getEtat()=="client") {
          				  try {
          					session=request.getSession(true);
          					session.setAttribute("user", user);
          					session.setAttribute("Clien",client);
          				    session.setAttribute("listvoiture", voiture);
          				    session.setAttribute("listbus", bus);
          				    session.setAttribute("listmoto", moto);
          					  this.getServletContext().getRequestDispatcher("/Client-Acc.jsp").forward(request, response);
          					  
          					  
          				  } catch (ServletException e) {
          					  e.printStackTrace();
          				  } catch (IOException e) {
          					  e.printStackTrace();
          				  }
          			  }else if(client.getEtat()=="bloquer") {
          				  System.out.println("bloquer");
          				try {
        					  this.getServletContext().getRequestDispatcher("/insc_erreur.html").forward(request, response);
        				  } catch (ServletException e) {
        					  e.printStackTrace();
        				  } catch (IOException e) {
      					  e.printStackTrace();
      				  }
          			  }else if(client.getEtat()=="preinscrit") {
          				  System.out.println("bloquer");
          				  try {
          					  this.getServletContext().getRequestDispatcher("/insc_erreur.html").forward(request, response);
          				  } catch (ServletException e) {
          					  e.printStackTrace();
          				  } catch (IOException e) {
        					  e.printStackTrace();
        				  }
          			  }
          		  }else {
          			  try {
          				  this.getServletContext().getRequestDispatcher("/Accueil.html").forward(request, response);
						} catch (ServletException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}

          		
          		  }
          		
          		         		     	  
              }
	
	
	          
	
              private void authG (HttpServletRequest request, HttpServletResponse response) {
            	  
            	  Gestionnaire gestionnaire=null;
            	  GestionInsAuth gestionInsAuth = null;
            	  
            	  
            	  String user= request.getParameter("nomUtilisateur");
          		  String password=request.getParameter("password");
          		  
          		  
          		  gestionInsAuth=new GestionInsAuth();
          		  gestionnaire=gestionInsAuth.sauthentifierGestionnaire(user, password);
          		  
          		  
          		  if(gestionnaire!=null) {
          			  if(gestionnaire.getTypeG()=="Gestionnaire") { 
          				  try {
          					  this.getServletContext().getRequestDispatcher("/Gestionnaire.jsp").forward(request, response);
          				  } catch (ServletException e) {
          					  e.printStackTrace();
          				  } catch (IOException e) {
          					e.printStackTrace();
          				  }
          			  }else if(gestionnaire.getTypeG()=="gestionnaireTechnique"){
          			  }
          		  } else {
          		  }
          		  
          		  
            	  
              }
              
              
              
              
              
              
	
	
          	private void  ins(HttpServletRequest request, HttpServletResponse response) {
    			Client client=null;
    			GestionInsAuth gestionInsAuth = null;
    		try {
    		client = formatClient(request);
    		gestionInsAuth = new GestionInsAuth();
    		gestionInsAuth.inscrire(client);
			this.getServletContext().getRequestDispatcher("/insc_erreur.html").forward(request, response);
 
             
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		
    		
    		}
	

}
