# language: fr
Fonctionnalité: Lister les sentiers disponibles (CreateHike.listAvailableTrails)
  Contrat de la commande listAvailableTrails (CU-10, étape 2). Commande de lecture.

  Scénario: Sentiers de la CCN où la randonnée est permise
    Étant donné que la liste de la CCN contient des sentiers où la randonnée est permise et d'autres où elle ne l'est pas
    Quand un organisateur demande les sentiers disponibles
    Alors seuls les sentiers où la randonnée est permise sont retournés, avec leur difficulté et leur saison d'ouverture

  Scénario: CCN indisponible
    Étant donné que le service de la CCN ne répond pas
    Et qu'une copie locale des sentiers existe
    Quand un organisateur demande les sentiers disponibles
    Alors les sentiers de la copie locale sont retournés
