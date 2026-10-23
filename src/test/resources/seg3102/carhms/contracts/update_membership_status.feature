# language: fr
Fonctionnalité: Modifier le statut d'adhésion (UpdateHiker.updateMembershipStatus)
  Contrat de la commande updateMembershipStatus (CU-07, extension 3a).
  Paramètre : MembershipStatusUpdateDto. Précondition : l'utilisateur est un administrateur.

  Scénario: Suspension d'une adhésion
    Étant donné qu'un administrateur est connecté
    Et que le randonneur "ana@mail.com" a une adhésion active
    Quand l'administrateur met son adhésion à "SUSPENDUE"
    Alors l'adhésion de "ana@mail.com" est suspendue
    Et ses inscriptions existantes ne changent pas
    Et il ne peut plus s'inscrire à une randonnée

  Scénario: Demande faite par un non-administrateur
    Étant donné que l'utilisateur connecté est un randonneur
    Quand il tente de modifier un statut d'adhésion
    Alors la modification est refusée

  Scénario: Statut inconnu
    Quand l'administrateur met une adhésion au statut "GELEE"
    Alors la modification est refusée
