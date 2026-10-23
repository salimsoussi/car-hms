# language: fr
Fonctionnalité: Lister les randonnées ouvertes (BrowseHikes.listOpenHikes)
  Contrat de la commande listOpenHikes du cas d'utilisation Parcourir les randonnées (CU-01).
  Commande de lecture : aucun changement d'état. Accessible sans authentification.

  Scénario: Un visiteur liste les randonnées ouvertes
    Étant donné que des randonnées ouvertes, complètes, fermées et annulées existent
    Quand un visiteur demande la liste des randonnées ouvertes
    Alors seules les randonnées au statut ouverte sont retournées
    Et elles sont triées par date et heure de début croissantes
    Et chaque randonnée indique son titre, son sentier, sa date, sa difficulté, son organisateur et ses places restantes

  Scénario: Aucune randonnée ouverte
    Étant donné qu'aucune randonnée n'est au statut ouverte
    Quand un visiteur demande la liste des randonnées ouvertes
    Alors une liste vide est retournée
