<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<%@ page import ="Model.Client" %>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="icon" type="image/png" href="ATELIER\car.png" />
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
       <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body >
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
                            <li><a href="Client-Acc.jsp" ><button class="clear button" id="nu" >Accueil</button></a></li>
                             <ul class="menu expanded" data-magellan>
                                 <li><a href="#first"><button class="clear button" >Réservation</button></a></li>
                                 <li><a href="#second"><button class="clear button" >Notification</button></a></li>
                             </ul>
                             <li><a href="#"><button class="clear button" >Logout</button></a></li>
                         </ul>
                    </div>
                 </div>
                 <br>
                 
                 <h2 id="H2-cl">Salut <a href="" id="H2-cl"><%String nom=(String) session.getAttribute("user");out.print(nom); %></a></h2>
                 <br>
                                                
                 </div>
                 <h3 id="info">Carte Client:</h3>
                 <div id="info0">
                 <br><jsp:useBean id="Clien" class="Model.Client" scope="session"> </jsp:useBean>
                                     <div class="grid-container">
                                     <div class="grid-x grid-margin-x">
                                     <div class="medium-2 cell">
                                             
                                         </div>
                                     <div class="medium-4 cell">
                                             <img  src="ATELIER\man.png" ">
                                         </div>
                                         <div class="medium-6 cell">
                                             <p id="infp">Nom:</p> 
                                             <p id="infp2"><jsp:getProperty property="nom" name="Clien" /></p>
                                         
                                             <p id="infp">Prenom:</p>
                                             <p id="infp2"><jsp:getProperty property="prenom" name="Clien"   /></p> 
                                         </div>
                                         <div class="medium-3 cell">
                                             <p id="infp">Date de naissance:</p> 
                                             <p id="infp2"><jsp:getProperty property="dateNaissence" name="Clien" /></p>
                                             
                                         </div>
                                          <div class="medium-3 cell">
                                             
                                         </div>
                                         <div class="medium-6 cell">
                                             <p id="infp">Numero de permis de conduire:</p> 
                                             <p id="infp2"><jsp:getProperty property="numeroidentifient" name="Clien" /></p>
                                             
                                         </div>

                                         <div class="medium-6 cell">
                                             <p id="infp">Nom d'utilisateur:</p> 
                                             <p id="infp2"><jsp:getProperty property="nomUtilisateur" name="Clien" /></p>
                                             <a class="button small expanded" id="insc" >Modifier</a>
                                         </div>
                                         <div class="medium-6 cell">
                                             <p id="infp">Numero de téléphone:</p> 
                                             <p id="infp2">0<jsp:getProperty property="numeroTelephone" name="Clien" /></p>
                                             <a class="button small expanded" id="insc" >Modifier</a>
                                         </div>

                                         <div class="medium-6 cell">
                                             <p id="infp">Adresse:</p> 
                                             <p id="infp2"><jsp:getProperty property="adresse" name="Clien" /></p>
                                             <a class="button small expanded" id="insc" >Modifier</a>
                                         </div>
                                         <div class="cell small-6">
                                             <p id="infp">Email:</p> 
                                             <p id="infp2"><jsp:getProperty property="email" name="Clien" /></p>
                                             <a class="button small expanded" id="insc" >Modifier</a>
                                             
                                         </div>
                                         <div class="medium-3 cell">
                                             
                                         </div>
                                         <div class="cell small-6">
                                             <p id="infp">Mot de passe:</p> 
                                             <a class="button small expanded" id="insc" >Modifier Votre mot de passe</a>
                                             
                                         </div>
                                         <div class="medium-3 cell">
                                             
                                         </div>
                                     </div>
                                     </div>
                                     </div>
                                     <br>

                                    <!-- Notification -->
                     <section id="second" data-magellan-target="second">
                     <h3 id="info">Notification:</h3>
                         <div class="callout secondary large" id="noti">
                             <h4 id="H2-cl">Notification</h4>
                             <p><jsp:getProperty property="notification" name="Clien" /></p>
                             
                         </div>    
                     </section>


<script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>
</body>
</html>