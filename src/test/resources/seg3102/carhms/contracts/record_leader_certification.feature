# language: fr
Fonctionnalité: Enregistrer une certification de chef de randonnée (UpdateHiker.recordLeaderCertification)
  Contrat de la commande recordLeaderCertification (CU-07, extension 3b).
  Paramètre : CertificationCreateDto. Précondition : l'utilisateur est un administrateur.

  Scénario: Le randonneur devient organisateur
    Étant donné qu'un administrateur est connecté
    Et que "ana@mail.com" est un randonneur
    Quand l'administrateur enregistre le certificat "CH-117" délivré le "2026-05-01", expirant le "2028-05-01", avec le niveau d'organisateur "DIFFICILE"
    Alors "ana@mail.com" est un organisateur de randonnée de niveau "DIFFICILE"
    Et sa certification "CH-117" est enregistrée avec ses dates

  Scénario: Dates incohérentes
    Quand l'administrateur enregistre une certification dont la date d'expiration précède la date de délivrance
    Alors l'enregistrement est refusé et le randonneur n'est pas organisateur

  Scénario: Demande faite par un non-administrateur
    Étant donné que l'utilisateur connecté est un randonneur
    Quand il tente d'enregistrer une certification
    Alors l'enregistrement est refusé
