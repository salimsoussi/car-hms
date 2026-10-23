# language: fr
Fonctionnalité: Consulter le profil d'un randonneur (UpdateHiker.getHikerProfile)
  Contrat de la commande getHikerProfile (CU-07, étape 2). Commande de lecture.
  Un randonneur ne consulte que son propre profil ; un administrateur consulte n'importe quel profil.

  Scénario: Profil existant
    Étant donné qu'un randonneur "ana@mail.com" existe
    Quand son profil est demandé
    Alors ses informations actuelles sont retournées, y compris son statut d'adhésion et, s'il y a lieu, sa certification

  Scénario: Profil inexistant
    Étant donné qu'aucun randonneur n'a le courriel "x@mail.com"
    Quand son profil est demandé
    Alors aucun résultat n'est retourné
