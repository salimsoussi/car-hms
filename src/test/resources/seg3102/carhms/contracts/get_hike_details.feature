# language: fr
Fonctionnalité: Consulter le détail d'une randonnée (BrowseHikes.getHikeDetails)
  Contrat de la commande getHikeDetails (CU-01, étape 6). Commande de lecture.

  Scénario: Randonnée existante
    Étant donné qu'une randonnée ouverte de capacité 12 a 9 inscriptions confirmées
    Quand un visiteur demande le détail de cette randonnée
    Alors le système retourne le titre, la description, le sentier, la date et l'heure, la durée prévue, la date limite et l'organisateur
    Et le nombre de places restantes est 3

  Scénario: Randonnée inexistante
    Étant donné qu'aucune randonnée n'a l'identifiant demandé
    Quand un visiteur demande son détail
    Alors aucun résultat n'est retourné
