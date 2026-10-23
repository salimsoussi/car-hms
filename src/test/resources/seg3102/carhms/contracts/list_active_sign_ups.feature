# language: fr
Fonctionnalité: Lister ses inscriptions annulables (CancelSignUp.listActiveSignUps)
  Contrat de la commande listActiveSignUps (CU-06, étape 2). Commande de lecture.

  Scénario: Inscriptions confirmées et en attente
    Étant donné que le randonneur "ana@mail.com" a une inscription confirmée, une en attente et une annulée à des randonnées à venir
    Et une inscription confirmée à une randonnée fermée
    Quand il demande ses inscriptions annulables
    Alors l'inscription confirmée et l'inscription en attente sont retournées, avec la position en liste d'attente
    Et l'inscription annulée et celle de la randonnée fermée ne sont pas retournées

  Scénario: Aucune inscription
    Étant donné que le randonneur n'a aucune inscription annulable
    Quand il demande ses inscriptions annulables
    Alors une liste vide est retournée
