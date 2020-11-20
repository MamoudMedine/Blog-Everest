config : 
   -soit vous importer le fichier db_everest.sql a la racine du projet dans phpmyadmin
   - soit vous creer une base de donnees nommee db_everest ensuite vous 
          vous ouvrez le projet et dans la console tvous tapez: php artisan migrate et ensuite php artisan db:seed
          NB : le seed va executer des factories pour les articles et les images sont de type lorempixel donc il faut 
           la connexion pour les afficher;
Utilisateur Admin :
email : admin@gmail.com  pass: 123456

PHP ARTISAN SERVE 
-pour aller a l'administartion ajouter /admin a l'adresse 127.0.0.1:8000