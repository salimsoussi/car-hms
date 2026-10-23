# language: fr
Fonctionnalité: Lister les randonnées adaptées au niveau (BrowseHikes.listHikesMatchingSkillLevel)
  Contrat de la commande listHikesMatchingSkillLevel (CU-01, extension 2a). Commande de lecture.
  Correspondance des niveaux (H5) : DEBUTANT=FACILE, INTERMEDIAIRE=MODERE, AVANCE=DIFFICILE, EXPERT=TRES_DIFFICILE.

  Contexte:
    Étant donné qu'un randonneur "ana@mail.com" de niveau "INTERMEDIAIRE" est connecté
    Et que des randonnées ouvertes de difficulté "FACILE", "MODERE", "DIFFICILE" et "TRES_DIFFICILE" existent

  Scénario: Randonnées au niveau ou un niveau au-dessus
    Quand le randonneur demande les randonnées adaptées à son niveau
    Alors les randonnées ouvertes de difficulté "MODERE" et "DIFFICILE" sont retournées
    Et aucune randonnée "FACILE" ni "TRES_DIFFICILE" n'est retournée

  Scénario: Utilisateur non randonneur
    Étant donné que le courriel ne correspond à aucun randonneur
    Quand la liste adaptée est demandée
    Alors une liste vide est retournée
