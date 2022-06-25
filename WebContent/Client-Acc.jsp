<!doctype html>
<html class="no-js" lang="en" dir="ltr">

 <%@ page import ="Model.Vehicule" %>
 <%@ page import ="java.util.ArrayList" %>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client</title>
    <link rel="icon" type="image/png" href="ATELIER\car.png" />
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
       <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body >
               <%ArrayList<Vehicule> voiture=(ArrayList<Vehicule>) session.getAttribute("listvoiture"); %>
                                                     <!-- top bar-->

                 <div class="title-bar" data-responsive-toggle="example-animated-menu" data-hide-for="medium">
                     <button class="menu-icon" type="button" data-toggle></button>
                     <div class="title-bar-title">Menu</div>
                 </div>

                 <div class="top-bar" id="example-animated-menu" data-sticky data-margin-top="0" >
                     <div><img src="ATELIER\rent-a-car34.png"></div>
                     <div class="top-bar-left">
                         <ul class="dropdown menu" data-dropdown-menu >
                             <li class="menu-text" >Rent Station</li>
                             
                         </ul>
                     </div>
                     <div class="top-bar-right">
                         <ul class="menu">
                            <li><a href="Profile-client.jsp" ><button class="clear button" id="nu" >Profile</button></a></li>
                             <ul class="menu expanded" data-magellan>
                                 <li><a href="#first"><button class="clear button" >Offres</button></a></li>
                                 <li><a href="#second"><button class="clear button" >Notification</button></a></li>
                             </ul>
                             <li><a href="#"><button class="clear button" >Logout</button></a></li>
                         </ul>
                    </div>
                 </div>
                 <br>
                 <h2 id="H2-cl">Salut <a href="Profile-client.jsp" id="H2-cl"><%String nom=(String) session.getAttribute("user"); out.print(nom); %></a></h2>
                 <p id="H2-c">On vous souhaite une bonne navigation sur notre site !  </p>

                                                     <!-- orbit -->

                 <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>

                     <div class="orbit-wrapper">

                         <div class="orbit-controls">
                            <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
                            <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
                         </div>
                         <ul class="orbit-container">
                             <li class="is-active orbit-slide">
                                <figure class="orbit-figure">
                                <img class="orbit-image" src="ATELIER\recher.png" alt="Space">
                                <figcaption class="orbit-caption">Pour une navigation facile et rapide nottre site vous permet de rechercher le véhicules que vous désirez </figcaption>
                                </figure>
                             </li>
                             <li class="orbit-slide">
                                <figure class="orbit-figure">
                                  <img class="orbit-image" src="ATELIER\motocar.jpg" alt="Space">
                                  <figcaption class="orbit-caption">Voiture? Bus? ou encore une moto? nous avons tous ce que vous faut ! <a href="#Third" id="slide-a">Trouver le meilleur véhicule pour vous</a> </figcaption>
                                </figure>
                             </li>
                             <li class="orbit-slide">
                                <figure class="orbit-figure">
                                  <img class="orbit-image" src="ATELIER\prof.png" alt="Space">
                                  <figcaption class="orbit-caption">Consulter,modifier votre profile et gérer vos réservation dans un seul endroit ! <a href="#" id="slide-a">Par ici !</a></figcaption>
                                </figure>
                             </li>
      
                         </ul>
                     </div>
                     <nav class="orbit-bullets">
                         <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
                         <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
                         <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
    
                     </nav>
                 </div>
                 <a class="button  expanded secondary" id="insc" href="#Third" >Réserver un véhicule</a>
                 
                                                   <!-- orbit end -->
                

                                                   <!--recherche-->

                 <div class="sections">

                     <section id="Third" data-magellan-target="Third">
                     <h2 id="H2-acc">Véhicules</h2>
                          <p id="H2-acc">Portes ouvertes sur nos garages, consulter tous les véhicules dans un seul endroit ! </p>
                         <ul class="tabs" data-responsive-accordion-tabs="tabs medium-accordion large-tabs" id="example-tabs">
                             <li class="tabs-title is-active"><a href="#panel1" aria-selected="true" id="select">Voiture</a></li>
                             <li class="tabs-title"><a href="#panel2" id="select">Bus</a></li>
                             <li class="tabs-title"><a href="#panel3" id="select">Moto</a></li>
                         </ul>

                         <div class="tabs-content" data-tabs-content="example-tabs">
                             <div class="tabs-panel is-active" id="panel1">
                             <h4 id="H2-acc">Recherche:</h4>
                             <div class="stacked-for-small button-group" id="select">
                                 <a class="button" data-open="Modal3">Citadine</a>
                                     <div class="large reveal" id="Modal3" data-reveal>
                                        <h1 id="inscf">Voiture citadine </h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <%for(int i=0;i<voiture.size();i++){ 
                                    if(voiture.get(i).getCategorie()=="VoitureCitadine"){%>
                                     
                                     <tr>
                                     <td><% out.print(voiture.get(i).getMarque()); %></td>
                                     <td><% out.print(voiture.get(i).getModele()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_jour()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_heure()); %></td>
                                     <td><% out.print(voiture.get(i).getMatricule()); %></td>
                                     <td><a class="button" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     <%}} %>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 <a class="button" data-open="Modal4">Utilitaire</a>
                                    <div class="large reveal" id="Modal4" data-reveal>
                                        <h1 id="inscf">Voiture utilitaire </h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <%for(int i=0;i<voiture.size();i++){ 
                                    if(voiture.get(i).getCategorie()=="VoitureProfessionnel"){%>
                                     
                                     <tr>
                                     <td><% out.print(voiture.get(i).getMarque()); %></td>
                                     <td><% out.print(voiture.get(i).getModele()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_jour()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_heure()); %></td>
                                     <td><% out.print(voiture.get(i).getMatricule()); %></td>
                                     <td><a class="button" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     <%}} %>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 <a class="button" data-open="Modal5">Voiture de luxe</a>
                                     <div class="large reveal" id="Modal5" data-reveal>
                                        <h1 id="inscf">Voiture de luxe </h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <%for(int i=0;i<voiture.size();i++){ 
                                    if(voiture.get(i).getCategorie()=="VoitureLuxe"){%>
                                     
                                     <tr>
                                     <td><% out.print(voiture.get(i).getMarque()); %></td>
                                     <td><% out.print(voiture.get(i).getModele()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_jour()); %></td>
                                     <td><% out.print(voiture.get(i).getPrix_par_heure()); %></td>
                                     <td><% out.print(voiture.get(i).getMatricule()); %></td>
                                     <td><a class="button" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     <%}} %>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                             </div>
                             <h4 id="H2-acc">Recherche avancée:</h4>
                             <p id="H2-acc">C'est à vous de choisir !</p>
                                 <form data-abide novalidate>
                                     <div data-abide-error class="alert callout" style="display: none;">
                                         <p><i class="fi-alert"></i>Il y a des erreurs dans votre formulaire </p>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x" id="select">
                                             <div class="medium-6 cell">
                                                 <label>Marque: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="kia" name="kia">Kia</option>
                                                         <option value="peugeot" name="peugeot">Peugeot</option>
                                                         <option value="mercedes" name="mercedes">Mercedes</option>
                                                         <option value="volkswagen" name="volkswagen">Volkswagen</option>
                                                         <option value="renault" name="renault">Renault</option>
                                                         <option value="fiat" name="fiat">Fiat</option>
                                                         <option value="miniCooper" name="miniCooper">MiniCooper</option>
                                                         <option value="seat" name="seat">Seat</option>
                                                         <option value="hyundai" name="hyundai">Hyundai</option>
                                                         <option value="skoda" name="skoda">Skoda</option>
                                                         <option value="ford" name="ford">Ford</option>
                                                         
                                                     </select>
                                                 </label>
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Catégorie: 
                                                     <select id="select" required>
                                                         <option value="citadine" name="citadine">Citadine</option>
                                                         <option value="utilitaire" name="utilitaire">Utilitaire</option>
                                                         <option value="lux" name="lux">Voiture de lux</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Etat: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="disponible" name="disponible">Disponible</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                         </div>
                                         <div class="grid-x grid-margin-x">
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par jour maximum:
                                                     <input type="text" placeholder="3000" name="plj" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par heure maximum:
                                                     <input type="text" placeholder="200" name="plh" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                         </div>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x">
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="submit" value="Submit">Envoyer</button>
                                             </fieldset>
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="reset" value="Reset">Réinitialiser</button>
                                             </fieldset>
                                         </div>
                                     </div>
                                 </form>
                             </div>
                             <div class="tabs-panel" id="panel2">
                             <h4 id="H2-acc">Recherche:</h4>
                             <div class="stacked-for-small alert button-group" id="select">
                                 <a class="button" data-open="Modal6">Minibus</a>
                                 <div class="large reveal" id="Modal6" data-reveal>
                                        <h1 id="inscf">Minibus</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele(Sièges)</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Ford</td>
                                     <td>Transit(21)</td>
                                     <td>5000 DA</td>
                                     <td>250 DA</td>
                                     <td>12345-317-25</td>
                                     <td><a class="button alert" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 <a class="button" data-open="Modal7">Comfort</a>
                                     <div class="large reveal" id="Modal7" data-reveal>
                                        <h1 id="inscf">Comfort</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele(Sièges)</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Mercedes</td>
                                     <td>Euro VI(51)</td>
                                     <td>6500 DA</td>
                                     <td>350 DA</td>
                                     <td>12345-317-25</td>
                                     <td><a class="button alert" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 <a class="button" data-open="Modal8">Semi-comfort</a>
                                     <div class="large reveal" id="Modal8" data-reveal>
                                        <h1 id="inscf">Semi-comfort</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele(Sièges)</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Toyota</td>
                                     <td>Coaster(26)</td>
                                     <td>4500 DA</td>
                                     <td>250 DA</td>
                                     <td>12345-317-25</td>
                                     <td><a class="button alert" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                             </div>
                             <h4 id="H2-acc">Recherche avancée:</h4>
                             <p id="H2-acc">C'est à vous de choisir !</p>
                                 <form data-abide novalidate>
                                     <div data-abide-error class="alert callout" style="display: none;">
                                         <p><i class="fi-alert"></i>Il y a des erreurs dans votre formulaire </p>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x" id="select">
                                             <div class="medium-6 cell">
                                                 <label>Marque: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="higer" name="higer">Higer</option>
                                                         <option value="peugeot" name="peugeot">Peugeot</option>
                                                         <option value="mercedes" name="mercedes">Mercedes</option>
                                                         <option value="volkswagen" name="volkswagen">Volkswagen</option>
                                                         <option value="renault" name="renault">Renault</option>
                                                         <option value="yutong" name="yutong">Yutong</option>
                                                         <option value="goldendragon" name="goldondragon">Golden Dragon</option>
                                                         <option value="kinglong" name="kinglong">King Long</option>
                                                         <option value="hyundai" name="hyundai">Hyundai</option>
                                                         <option value="toyota" name="toyota">Toyota</option>
                                                         <option value="ford" name="ford">Ford</option>
                                                         
                                                     </select>
                                                 </label>
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Catégorie: 
                                                     <select id="select" required>
                                                         <option value="minibus" name="minibus">MiniBus</option>
                                                         <option value="comfort" name="comfort">Comfort</option>
                                                         <option value="semi-comfort" name="semi-comfort">Semi-Comfort</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Etat: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="disponible" name="disponible">Disponible</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>
                                                     Nombre de sièges :
                                                     <input type="number" value="20" name="nsiege">
                                                 </label>
                                             </div>
                                         </div>
                                         <div class="grid-x grid-margin-x">
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par jour maximum:
                                                     <input type="text" placeholder="3000" name="plj" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par heure maximum:
                                                     <input type="text" placeholder="200" name="plh" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                         </div>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x">
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="submit" value="Submit">Envoyer</button>
                                             </fieldset>
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="reset" value="Reset">Réinitialiser</button>
                                             </fieldset>
                                         </div>
                                     </div>
                                 </form>
                             </div>
                             <div class="tabs-panel" id="panel3">
                             <h4 id="H2-acc">Recherche:</h4>
                             <div class="stacked-for-small warning button-group" id="select">
                                 <a class="button" data-open="Modal9">Sport</a>
                                 <div class="large reveal" id="Modal9" data-reveal>
                                        <h1 id="inscf">Sport</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Yamaha</td>
                                     <td>YZF-R1</td>
                                     <td>4000 DA</td>
                                     <td>250 DA</td>
                                     <td>12345-217-25</td>
                                     <td><a class="button warning" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 <a class="button" data-open="Modal10">Urbain</a>
                                      <div class="large reveal" id="Modal10" data-reveal>
                                        <h1 id="inscf">Urbain</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Marque</th>
                                     <th width="150">Modele</th>
                                     <th width="150">Prix par jour</th>
                                     <th width="150">Prix par heure</th>
                                     <th width="200">Matricule(num-année-vile)</th>
                                     <th width="100"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Vespa</td>
                                     <td>Sprint</td>
                                     <td>2000 DA</td>
                                     <td>150 DA</td>
                                     <td>12345-217-25</td>
                                     <td><a class="button warning" id="inscres" href="#" data-open="Modal1">Réserver</a></td>
                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                                 
                             </div>
                             <h4 id="H2-acc">Recherche avancée:</h4>
                             <p id="H2-acc">C'est à vous de choisir !</p>
                                 <form data-abide novalidate>
                                     <div data-abide-error class="alert callout" style="display: none;">
                                         <p><i class="fi-alert"></i>Il y a des erreurs dans votre formulaire </p>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x" id="select">
                                             <div class="medium-6 cell">
                                                 <label>Marque: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="yamaha" name="yamaha">Yamaha</option>
                                                         <option value="BMW" name="BMW">BMW</option>
                                                         <option value="vespa" name="vespa">Vespa</option>
                                                         <option value="harley-davidson" name="harley-davidson">Harley Davidson</option>
                                                         
                                                     </select>
                                                 </label>
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Catégorie: 
                                                     <select id="select" required>
                                                         <option value="urbain" name="urbain">Urbain</option>
                                                         <option value="sport" name="sport">Sport</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Etat: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="disponible" name="disponible">Disponible</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                         </div>
                                         <div class="grid-x grid-margin-x">
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par jour maximum:
                                                     <input type="text" placeholder="3000" name="plj" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                             <div class="cell small-6" id="select">
                                                 <label>Prix par heure maximum:
                                                     <input type="text" placeholder="200" name="plh" aria-describedby="exampleHelpText" required pattern="number">
                                                     <span class="form-error">
                                                     Champs obligatoires
                                                     </span>
                                                 </label>        
                                             </div>
                                         </div>
                                     </div>
                                     <div class="grid-container">
                                         <div class="grid-x grid-margin-x">
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="submit" value="Submit">Envoyer</button>
                                             </fieldset>
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="reset" value="Reset">Réinitialiser</button>
                                             </fieldset>
                                         </div>
                                     </div>
                                 </form>
                             </div>
  
                         </div>
                         
                     </section>
                     <section id="first" data-magellan-target="first">
                             <h2 id="H2-acc">Nos offres</h2>
                             <p id="H2-acc">Jetez un coup d'oeil sur nos offres et béneficiez des meilleurs tarifs et de nombreux avantages</p>

                 
                      
                         <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">

                             <div class="orbit-wrapper">
                                 <div class="orbit-controls">
                                     <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
                                     <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
                                 </div>
                                 <ul class="orbit-container">
                                     <li class="is-active orbit-slide">
                                         <figure class="orbit-figure">
                                             <img class="orbit-image" src="ATELIER\choisis.jpg" alt="Space">
                                             <figcaption class="orbit-caption">On vous accompagnera dans vos plus belles jours avec notre offre des fêtes <br></figcaption>
                                         </figure>
                                     </li>
                                     <li class="orbit-slide">
                                         <figure class="orbit-figure">
                                             <img class="orbit-image" src="ATELIER\VAC1.jpg" alt="Space">
                                             <figcaption class="orbit-caption">Pensez vous aller en vacances ? cette offre est spécialement fait pour vous ! </figcaption>
                                         </figure>
                                     </li>
                                     <li class="orbit-slide">
                                         <figure class="orbit-figure">
                                             <img class="orbit-image" src="ATELIER\even.png" alt="Space">
                                             <figcaption class="orbit-caption">Evenement ? Voyege organisé ? transporter un grand nombre ? Nous avons pensé à tout, nous avons ce qu'il vous faut. </figcaption>
                                             </figure>
                                     </li>
                                 </ul>
                             </div>
                             <nav class="orbit-bullets">
                                 <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
                                 <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
                                 <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>   
                             </nav>
                         </div>
                         <button class=" button expanded warning" id="insc" data-open="Modal2" >Consulter les offres!</button>
                     </section>
                     <div class="reveal" id="Modal2" data-reveal>
                     <h1>Offres</h1>
                     
  
                 </div>
                                                     
                                                     
                             

                 
                                                     <!-- Notification -->
                     <section id="second" data-magellan-target="second">
                         <div class="callout primary" id="noti">
                             <h4 id="H2-cl">Notification</h4>
                             <p>Notification text ici</p>
                             <a href="#" id="H2-c">Pour plus d'information consulter votre profile </a>
                         </div>    
                     </section>                               
                 </div>


                                                     <!-- contactez nous-->
                 
                 <h4 id="cont">Pour nous, votre satisfaction est essentiel</h4>
                 <p id="cont1">Relation clientèle</p>
                 <p id="cont2">Nous vous Proposons plusieurs solution pour nous contacter. Choisissez celle qui vous convient le mieux</p>
                 <div class="media-object stack-for-small">
                     <div class="media-object-section">
                         <div class="thumbnail" id="cont3">
                             <img src= "ATELIER\contactez-nous.jpg">
                         </div>
                     </div>
                     <div class="media-object-section">
                         <p id="cont4">Email:</p>
                         <p id="cont5">AgenceLOC@hotmail.fr</p>
                     
                     
                         <p id="cont4">Telephone:</p>
                         <p id="cont5">0542216142 <br> du samedi au jeudi de 8H30 à 17H30</s></p>

                         <p id="cont4">Adresse:</p>
                         <p id="cont5">Agence location <br> Rue de l'independance, Ali Medjeli <br> Ali Mendjeli, Constantine</s></p>
                     </div>
                 </div>
                 

                                                              <!-- fin contactez nous -->





                 



    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>                
</body>
</html>