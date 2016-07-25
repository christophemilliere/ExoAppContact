ExoAppContact
======

Base de données
--------
Postgres

Quand la migration est terminée
--------

Il faut lancer la commande 
`rake db:seed`

Pour avoir des données en mode développement

Génération du PDF
--------
J'utilise la gem wicked_pdf.
Il est possible qu'il faille configurer le fichier qui se trouve dans `config/initializers/wicked_pdf.rb`, pour générer le PDF.
Faire un `which wkhtmltopdf` pour ajouter l'url dans le fichier d'initializer


Améliorations possible et envisageable de l'application 
--------

- Possibilité d'ajouter un tag depuis le formulaire de contact
- Gestion des numéros de téléphone étranger



  


