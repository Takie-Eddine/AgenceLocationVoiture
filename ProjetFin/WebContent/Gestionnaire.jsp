<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionnaire</title>
    <link rel="icon" type="image/png" href="ATELIER\car.png" />
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
       <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body >
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
                            
                             <ul class="menu expanded" data-magellan>
                                 <li><a href="#first"><button class="clear button" >Economie</button></a></li>
                                 <li><a href="#second"><button class="clear button" >Gestion</button></a></li>
                             </ul>
                             <li><a href="#"><button class="clear button" >Logout</button></a></li>
                         </ul>
                    </div>
                 </div>
                 <br>
                 <h2 id="H2-cl">Salut <a href="" id="H2-cl">Gestionnaire</a></h2>

                 <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>

                     <div class="orbit-wrapper">

                         <div class="orbit-controls">
                            <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
                            <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
                         </div>
                         <ul class="orbit-container">
                             <li class="is-active orbit-slide">
                                <figure class="orbit-figure">
                                <img class="orbit-image" src="ATELIER\tech.jpg" alt="Space">
                                <figcaption class="orbit-caption">Gérer les demandes d'inscription <a href="#" id="slide-a" data-open="Modal1">Par ici ! </a> </figcaption>
                                </figure>
                                <div class="large reveal" id="Modal1" data-reveal>
                                        <h1 id="inscf">Gérer demandes d'inscription</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Nom</th>
                                     <th width="150">Prenom</th>
                                     <th width="150">Nom d'utilisateur</th>
                                     <th width="150">Adresse</th>
                                     <th width="150">Email</th>
                                     <th width="150">Numero de téléphone</th>
                                     <th width="150">Date de naissance</th>
                                     <th width="100">Num Permis</th>
                                     <th width="50"></th>
                                     <th width="50"></th>
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Cheloufi</td>
                                     <td>Youcef Wassim</td>
                                     <td>Africain</td>
                                     <td>cité sakiet sidi youcef bat 103 num 575</td>
                                     <td>senfour-milan@hotmail.fr</td>
                                     <td>0542216142</td>
                                     <td>27/07/1997</td>
                                     <td>345678</td>
                                     <td><a class="button success" id="inscres" href="#" data-open="Modal1">Confirmer</a></td>
                                     <td><a class="button alert" id="inscres" href="#" data-open="Modal1">Annuler</a></td>

                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                             </li>
                             <li class="orbit-slide">
                                <figure class="orbit-figure">
                                  <img class="orbit-image" src="ATELIER\prof.png" alt="Space">
                                  <figcaption class="orbit-caption">Gérer les demandes de réservation <a href="#" id="slide-a" data-open="Modal2">Par ici ! </a> </figcaption>
                                </figure>
                                <div class="large reveal" id="Modal2" data-reveal>
                                        <h1 id="inscf">Gérer demandes de réservation</h1>

                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">ID réservation</th>
                                     <th width="150">marque</th>
                                     <th width="150">modele</th>
                                     <th width="150">matricule</th>
                                     <th width="150">client</th>
                                     <th width="150">Date de location</th>
                                     <th width="150">Date fin de location</th>
                                     <th width="100">Heure début</th>
                                     <th width="100">Heure fin</th>
                                     <th width="100">Prix</th>
                                     <th width="50"></th>
                                     
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>123456</td>
                                     <td>vespa</td>
                                     <td>SEI GIORINI</td>
                                     <td>1234-217-25</td>
                                     <td>africain</td>
                                     <td>27/07/2018</td>
                                     <td>07/08/2018</td>
                                     <td>7h</td>
                                     <td>19h</td>
                                     <td>20000 DA</td>
                                     <td><a class="button success" id="inscres" href="#" data-open="Modal1">Mettre fin</a></td>
                                     <

                                     </tr>
                                     </tbody>
                                     </table>
                                     <button class="close-button" data-close aria-label="Close modal" type="button">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                     </div>
                             </li>
      
                         </ul>
                     </div>
                     <nav class="orbit-bullets">
                         <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
                         <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
                        
    
                     </nav>
                 </div>

                 <div class="sections">
                     <section id="first" data-magellan-target="first">
                         <h3 id="info">Economie:</h3>
                         <div class="callout secondary large" id="">
                             <h4 id="H2-ges">Recette:</h4>
                             <p id="recette">Le 27/07/2018 : 400000.DA</p>
                             <p id="reccal">Calculer la recette:</p>
                             <form data-abide novalidate>
                                     <div data-abide-error class="alert callout" style="display: none;">
                                         <p><i class="fi-alert"></i>Il y a des erreurs dans votre formulaire </p>
                                     </div>
                                     <div class="grid-container">
                                     <div class="grid-x grid-margin-x">
                                         <div class="cell small-6" id="select">
                                                 <label>Type véhicule: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="voiture" name="voiture">Voiture</option>
                                                         <option value="bus" name="Bus">Bus</option>
                                                         <option value="Moto" name="Bus">moto</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                          <div class="cell small-6" id="select">
                                          </div>
                                         <div class="cell small-6">
                                             <label>Entre:
                                                 <input type="date" placeholder="date debut" required>
                                                 <span class="form-error">
                                                     Champs obligatoire
                                                 </span>
                                             </label>
                                         </div>
                                         <div class="cell small-6">
                                             <label>Et:
                                                 <input type="date" placeholder="date fin" required>
                                                 <span class="form-error">
                                                     Champs obligatoire
                                                 </span>
                                             </label>
                                         </div>
                                     </div>
                                     </div>
                                     <div class="grid-container">

                                         <div class="grid-x grid-margin-x">
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="submit" value="Submit">Calculer</button>
                                             </fieldset>
                                         <fieldset class="cell large-6">
                                                 <button class="button" type="reset" value="Reset">Réinitialiser</button>
                                         </fieldset>
                                         </div>
                                     </div>
                                 </form>

                         </div>
                     </section>
                     <section id="second" data-magellan-target="second">
                         <h3 id="info">Gestion:</h3>
                         <ul class="accordion" id="accord-type" data-accordion data-allow-all-closed="true">
                             <li class="accordion-item is-active" data-accordion-item> 
    <!-- Accordion tab title -->
                                 <a href="#" class="accordion-title acctype" >Gérer client</a>

    <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
                                 <div class="accordion-content" data-tab-content>
                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">Nom</th>
                                     <th width="150">Prenom</th>
                                     <th width="150">Nom d'utilisateur</th>
                                     <th width="150">Adresse</th>
                                     <th width="150">Email</th>
                                     <th width="150">Numero de téléphone</th>
                                     <th width="150">Date de naissance</th>
                                     <th width="100">Num Permis</th>
                                     <th width="50"></th>
                                     
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>Cheloufi</td>
                                     <td>Youcef Wassim</td>
                                     <td>Africain</td>
                                     <td>cité sakiet sidi youcef bat 103 num 575</td>
                                     <td>senfour-milan@hotmail.fr</td>
                                     <td>0542216142</td>
                                     <td>27/07/1997</td>
                                     <td>345678</td>
                                     <td><a class="button success" id="inscres" href="#" data-open="Modal1">Consulter</a></td>
                                     

                                     </tr>
                                     </tbody>
                                     </table>
                                 </div>
                             </li>
  <!-- ... -->
                             <li class="accordion-item" data-accordion-item>
    <!-- Accordion tab title -->
                                 <a href="#" class="accordion-title acctype">Gérer réservation</a>


    <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
                                 <div class="accordion-content" data-tab-content>
                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">ID réservation</th>
                                     <th width="150">marque</th>
                                     <th width="150">modele</th>
                                     <th width="150">matricule</th>
                                     <th width="150">client</th>
                                     <th width="150">Date de location</th>
                                     <th width="150">Date fin de location</th>
                                     <th width="100">Heure début</th>
                                     <th width="100">Heure fin</th>
                                     <th width="100">Prix</th>
                                     <th width="50"></th>
                                     
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>123456</td>
                                     <td>vespa</td>
                                     <td>SEI GIORINI</td>
                                     <td>1234-217-25</td>
                                     <td>africain</td>
                                     <td>27/07/2018</td>
                                     <td>07/08/2018</td>
                                     <td>7h</td>
                                     <td>19h</td>
                                     <td>20000 DA</td>
                                     <td><a class="button warning" id="inscres" href="#" data-open="Modal1">Mettre fin</a></td>
                                     

                                     </tr>
                                     </tbody>
                                     </table>   
                                 </div>
                             </li>
                             <li class="accordion-item" data-accordion-item>
    <!-- Accordion tab title -->
                                 <a href="#" class="accordion-title acctype">Historique de réservation</a>

    <!-- Accordion tab content: it would start in the open state due to using the `is-active` state class. -->
                                 <div class="accordion-content" data-tab-content>
                                     <table class="stack" id="tabrev">
                                     <thead>
                                     <tr>
                                     <th width="150">ID réservation</th>
                                     <th width="150">marque</th>
                                     <th width="150">modele</th>
                                     <th width="150">matricule</th>
                                     <th width="150">client</th>
                                     <th width="150">Date de location</th>
                                     <th width="150">Date fin de location</th>
                                     <th width="100">Heure début</th>
                                     <th width="100">Heure fin</th>
                                     <th width="100">Prix</th>
                                     
                                     
                                     </tr>
                                     </thead>
                                     <tbody>
                                     <tr>
                                     <td>123456</td>
                                     <td>vespa</td>
                                     <td>SEI GIORINI</td>
                                     <td>1234-217-25</td>
                                     <td>africain</td>
                                     <td>27/07/2018</td>
                                     <td>07/08/2018</td>
                                     <td>7h</td>
                                     <td>19h</td>
                                     <td>20000 DA</td>
                                     
                                     

                                     </tr>
                                     </tbody>
                                     </table>
                                     <p id="reccal">Calculer la recette:</p>
                                     <form data-abide novalidate>
                                     <div data-abide-error class="alert callout" style="display: none;">
                                         <p><i class="fi-alert"></i>Il y a des erreurs dans votre formulaire </p>
                                     </div>
                                     <div class="grid-container">
                                     <div class="grid-x grid-margin-x">
                                         <div class="cell small-6" id="select">
                                                 <label>Type véhicule: 
                                                     <select id="select" required>
                                                         <option value="tous" name="tous">Tous</option>
                                                         <option value="voiture" name="voiture">Voiture</option>
                                                         <option value="bus" name="Bus">Bus</option>
                                                         <option value="Moto" name="Bus">moto</option>
                                                     </select>
                                                 </label>        
                                             </div>
                                          <div class="cell small-6" id="select">
                                          </div>
                                         <div class="cell small-6">
                                             <label>Entre:
                                                 <input type="date" placeholder="date debut" required>
                                                 <span class="form-error">
                                                     Champs obligatoire
                                                 </span>
                                             </label>
                                         </div>
                                         <div class="cell small-6">
                                             <label>Et:
                                                 <input type="date" placeholder="date fin" required>
                                                 <span class="form-error">
                                                     Champs obligatoire
                                                 </span>
                                             </label>
                                         </div>
                                     </div>
                                     </div>
                                     <div class="grid-container">

                                         <div class="grid-x grid-margin-x">
                                             <fieldset class="cell large-6">
                                                 <button class="button" type="submit" value="Submit">Calculer</button>
                                             </fieldset>
                                         <fieldset class="cell large-6">
                                                 <button class="button" type="reset" value="Reset">Réinitialiser</button>
                                         </fieldset>
                                         </div>
                                     </div>
                                 </form>
 
                                 </div>
                             </li>
                         </ul>

                     </section>
                 </div>



<script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>                
</body>
</html>