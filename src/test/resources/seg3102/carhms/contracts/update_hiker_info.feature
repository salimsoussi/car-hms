# language: fr
Fonctionnalité: Mettre à jour ses informations (UpdateHiker.updateHikerInfo)
  Contrat de la commande updateHikerInfo (CU-07, étapes 3-4).
  Paramètre : HikerUpdateDto. Le courriel, le niveau d'habileté, l'adhésion et la certification ne sont pas modifiables ici (H7).

  Scénario: Mise à jour valide
    Étant donné que le randonneur "ana@mail.com" est connecté
    Quand il modifie son téléphone, son adresse et sa personne-ressource
    Alors les nouvelles informations sont enregistrées
    Et son courriel, son niveau et son adhésion ne changent pas

  Scénario: Information invalide
    Quand le randonneur soumet un code postal vide
    Alors la mise à jour est refusée et aucune information ne change
